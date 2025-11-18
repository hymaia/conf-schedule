<template>
  <div class="legend">
    <span class="letter strategy">AI & ML</span>
    <span class="letter product">Platform</span>
    <span class="letter experience">Governance</span>
    <span class="letter engineering">Strategy</span>
  </div>
</template>

<script>
export default {
  name: 'Legend'
}
</script>

<style lang="scss" scoped>
@import "../styles/variables";

.legend {
  margin-top: 40px;
  text-align: center;
}

.letter {
  margin: 0 5px;
  padding: 7px 10px 3px 10px;
  border-radius: 100%;
  font-size: 18px;
  font-weight: bold;

  &.strategy {
    background: $strategy;
  }

  &.product {
    background: $product;
    color: #f66b54;
  }

  &.experience {
    background: $experience;
  }

  &.engineering {
    background: $engineering;
    color: #360717;
  }
}
</style>
