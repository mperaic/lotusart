def config.assets.paths
  Rails.application.config.assets.paths <<
  Rails.root.join('node_modules', 'vendor/assets')
end
