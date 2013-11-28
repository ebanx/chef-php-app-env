node[:deploy].each do |application, deploy|
  
  if node[:php_app_env].has_key? application.to_s
    app_cfg = node[:php_app_env][application.to_s]

    template "#{deploy[:deploy_to]}/shared/config/env.php" do
      source "env.php.erb"
      owner deploy[:user] 
      group deploy[:group]
      mode "0660"

      variables( 
        :application => application.to_s,
        :env_vars => app_cfg[:env_vars],
        :ini_sets => app_cfg[:ini_sets]
      )

      only_if do
        File.directory?("#{deploy[:deploy_to]}/shared/config")
      end
    end
  end
end