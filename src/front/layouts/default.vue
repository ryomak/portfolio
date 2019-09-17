<template>
  <div>
    <div class="menu">
      <a
        v-for="(item, key) in items"
        :key="key"
        class="menu-detail"
        :href="item.to.value"
        :target="item.blank ? '_blank' : false"
      >
        <span>{{ item.title }}</span>
      </a>
      <a
        v-for="(item, key) in sns"
        :key="key"
        class="menu-detail-sns"
        :href="item.to.value"
        :target="item.blank ? '_blank' : false"
      >
        <b-icon :icon="item.icon"> </b-icon>
      </a>
    </div>
    <div class="body-container">
      <nuxt />
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      isOpen: false
    }
  },
  computed: {
    sns() {
      return [
        {
          title: 'github',
          icon: 'github-face',
          to: {
            value: 'https://github.com/ryomak',
            blank: true
          }
        },
        {
          title: 'twitter',
          icon: 'twitter',
          to: {
            value: 'https://twitter.com/kurisuuu3',
            blank: true
          }
        },
        {
          title: 'instagram',
          icon: 'instagram',
          to: {
            value: 'https://www.instagram.com/kuriiiii13',
            blank: true
          }
        }
      ]
    },
    items() {
      return [
        {
          title: 'Home',
          icon: 'home',
          to: {
            value: '/',
            blank: false
          }
        },
        {
          title: 'Works',
          icon: 'console',
          to: {
            value: '/works',
            blank: false
          }
        },
        {
          title: 'Blog',
          icon: 'desktop-mac',
          to: {
            value: 'https://ryomak.info',
            blank: true
          }
        },
        {
          title: 'Contact',
          icon: 'email',
          to: {
            value: '/contact',
            blank: false
          }
        }
      ]
    }
  }
}
</script>
<style lang="scss">
.menu {
  position: fixed;
  display: table;
  background: rgba(#fff, 0.7);
  padding: 1rem;
  margin: 2rem;
  font-size: 1rem;
  right: 0;
}

.menu-detail {
  position: relative;
  display: block;
  letter-spacing: 2px;
}

.menu-detail-sns {
  position: relative;
  letter-spacing: 2px;
}
</style>
