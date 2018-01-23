ansible-laravel-api-code
=========

Deploy Laravel API projects

Role Variables
--------------

Required:
* `laravel_api_base_path`: path in the host where the project should be installed
* `laravel_api_repo_url`: git repository url to fetch the project from
* `laravel_api_repo_version`: repository version to install

Optional:
* `laravel_api_env`: (default=`{}`) dictionary of keys / values to apply in the environment configuration file. Note that the sample environment configuration file (selected below) may require some values to be set in this dictionary.
* `laravel_api_dotenv_sample`: (default=`.env.deploy`) sample environment configuration file to use
* `laravel_api_composer_dev_pkgs`: (default=`false`) let composer install packages marked for development
* `laravel_api_memcached_enabled`: (default=`true`) the API project uses memcached
* `laravel_api_queue_workers_enabled`: (default=`false`) the API project uses queue workers
* `laravel_api_php`: (default=`php`) php interpreter executable to use
* `www_user`: (default=`www-data`) user the web server is running as
* `www_group`: (default=`www-data`) group the web server is running as
* `laravel_api_clone_path`: path in the host where the project repo should be cloned. It is assumed to be a parent to `laravel_api_base_path`. Defaults to `laravel_api_base_path`.


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: ansible-laravel-api-code
          laravel_api_base_path: /var/www/app
          laravel_api_repo_url: https://github.com/tuxpiper/laravel-realworld-example-app.git
          laravel_api_repo_version: master
          laravel_api_dotenv_sample: .env.example
          laravel_api_composer_dev_pkgs: yes
          laravel_api_env:
            APP_KEY: "testOplomo"
            DB_HOST: "{{ mysql_host }}"
            DB_DATABASE: "test"
            DB_USERNAME: "test"
            DB_PASSWORD: "test"

License
-------

BSD

Author Information
------------------

Ushahidi Team