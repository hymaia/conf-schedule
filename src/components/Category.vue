<template>
  <span class="category" :class="filteredCategory">{{ filteredCategory }}</span>
</template>

<script>
export default {
  name: 'Category',
  props: ['category'],
  computed: {
    filteredCategory() {
      if (this.category !== 'Other') {
        return this.category;
      } else {
        return '';
      }
    }
  }
}
</script>

<style scoped lang="scss">
@import "../styles/variables";

.category {
  display: block;
  width: fit-content;
  padding: 3px 5px 0 5px;
  margin-top: 7px;
  font-size: .8em;
  border-radius: $radius;
}

.aiml {
  background: $strategy;
}

.governance {
  background: $experience;
}

.strategy {
  background: $engineering;
  color: #FFFFFF;
}

.platform {
  background: $product;
  color: #FFFFFF;
}

.Data {
  background: $data;
  color: #FFFFFF;
}
</style>
