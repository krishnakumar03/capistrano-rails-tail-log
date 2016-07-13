namespace :rails do
  desc "Tail rails logs from server"
  task :tail_log, [:arg1 = 0] do |t, args| do
    SSHKit.config.output_verbosity = Logger::DEBUG
    num = args[:num1].to_i
    on roles(:app) do
      execute "tail -f #{shared_path}/log/#{fetch(:rails_env)}.log"
    end
  end
end
