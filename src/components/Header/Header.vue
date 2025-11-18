<template>
  <header class="header">
    <img class="header__logo" alt="ked logo" src="./forward_data_conference_cover.jpeg"/>
    <div class="header__banner">
      {{theDay}}
    </div>
  </header>
</template>

<script>
  import moment from 'moment';

  export default {
    name: 'Header',
    props: ['day'],
    computed: {
      theDay: function () {
        moment.locale('en');
        return moment(this.day).format('Do MMMM YYYY')
      }
    }
  }
</script>

<style scoped lang="scss">
@import "../../styles/variables";
.header {
    background-color: #FFFFFF;
    width: 100%;
    text-transform: uppercase;
    text-align: center;
    font-weight: bold;
    padding-top: 0;

    &__logo {
      max-width: 2000px;
      width: 100%;
    }

    &__banner {
      margin-top: -5px;
      height: 40px;
      background-color: $secondary;
      vertical-align: middle;
      text-align: center;
      font-weight: 600;
      line-height: 44px;
      color: #FFFFFF;
    }
  }
</style>
