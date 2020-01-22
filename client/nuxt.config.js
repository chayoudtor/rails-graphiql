
export default {
  mode: 'spa',
  head: {
    title: 'Nuxt Learning !',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: process.env.npm_package_description || '' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },
  loading: { color: '#fff' },
  css: [
  ],
  plugins: [
  ],
  buildModules: [
    '@nuxtjs/eslint-module',
    '@nuxtjs/stylelint-module'
  ],
  modules: [
    'bootstrap-vue/nuxt',
    '@nuxtjs/axios',
    '@nuxtjs/apollo'
  ],
  apollo: {
    clientConfigs: {
      default: {
        httpEndpoint: 'http://localhost:8080/graphql'
      }
    }
  },
  axios: {
  },
  build: {
    extend (config, ctx) {
    }
  }
}
