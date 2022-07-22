const { environment } = require('@rails/webpacker')

const customConfig = {
  node: {
    fs: 'empty',
    module: 'empty',
    net: 'empty'
  }
};

environment.config.merge(customConfig);

module.exports = environment