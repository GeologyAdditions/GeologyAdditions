{
  add_stone_axe_patch(stone_type, durability)::
    [
      {
        op: 'addmerge',
        path: '/variantgroups/0/states/-',
        value: stone_type,
        file: 'game:itemtypes/tool/axe-stone.json',
      },
      {
        op: 'addmerge',
        path: '/variantgroups/0/states/-',
        value: 'bone-' + stone_type,
        file: 'game:itemtypes/tool/axe-stone.json',
      },
      {
        op: 'addmerge',
        path: '/durabilitybytype/axe-bone-' + stone_type,
        value: durability,
        file: 'game:itemtypes/tool/axe-stone.json',
      },
      {
        op: 'addmerge',
        path: '/texturesByType/axe-bone-' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
          handle: { base: 'block/creature/bone-yellow' },
        },
        file: 'game:itemtypes/tool/axe-stone.json',
      },
      {
        op: 'addmerge',
        path: '/1/ingredients/T/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/grid/tools/axe.json',
      },
      {
        op: 'addmerge',
        path: '/2/ingredients/T/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/grid/tools/axe.json',
      },
      {
        op: 'addmerge',
        path: '/variantgroups/0/states/-',
        value: stone_type,
        file: 'game:itemtypes/toolhead/axehead.json',
      },
      {
        op: 'addmerge',
        path: '/texturesByType/axehead-' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
          string: { base: 'block/transparent' },
          handle: { base: 'block/transparent' },
        },
        file: 'game:itemtypes/toolhead/axehead.json',
      },
      {
        op: 'addmerge',
        path: '/1/ingredients/T/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/grid/tool/axe.json',
      },
      {
        op: 'addmerge',
        path: '/2/ingredients/T/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/grid/tool/axe.json',
      },
      {
        op: 'add',
        path: '/ingredient/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/knapping/stone-hatchet.json',
      },
    ],
  add_stone_knife_patch(stone_type, durability, mining_speed, attack_power)::
    [
      {
        op: 'addmerge',
        path: '/variantgroups/1/states/-',
        value: stone_type,
        file: 'game:itemtypes/tool/knife.json',
      },
      {
        op: 'addmerge',
        path: '/variantgroups/1/states/-',
        value: 'bone' + stone_type,
        file: 'game:itemtypes/tool/knife.json',
      },
      {
        op: 'addmerge',
        path: '/texturesByType/knife-generic-' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
        },
        file: 'game:itemtypes/tool/knife.json',
      },
      {
        op: 'addmerge',
        path: '/texturesByType/knife-generic-bone' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
          handle: { base: 'block/creature/bone-yellow' },
        },
        file: 'game:itemtypes/tool/knife.json',
      },
      {
        op: 'addmerge',
        path: '/shapeByType/knife-generic-' + stone_type,
        value: { base: 'item/tool/knife/stone' },
        file: 'game:itemtypes/tool/knife.json',
      },
      {
        op: 'addmerge',
        path: '/durabilitybytype/knife-generic-' + stone_type,
        value: durability,
        file: 'game:itemtypes/tool/knife.json',
      },
      {
        op: 'addmerge',
        path: '/miningspeedbytype/knife-generic-' + stone_type,
        value: {
          plant: mining_speed,
        },
        file: 'game:itemtypes/tool/knife.json',
      },
      {
        op: 'addmerge',
        path: '/attackpowerbytype/knife-generic-' + stone_type,
        value: attack_power,
        file: 'game:itemtypes/tool/knife.json',
      },
      {
        op: 'addmerge',
        path: '/variantgroups/0/states/-',
        value: stone_type,
        file: 'game:itemtypes/toolhead/knifeblade.json',
      },
      {
        op: 'addmerge',
        path: '/texturesByType/knifeblade-' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
        },
        file: 'game:itemtypes/toolhead/knifeblade.json',
      },
      {
        op: 'addmerge',
        path: '/0/ingredients/T/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/grid/tool/knife.json',
      },
      {
        op: 'addmerge',
        path: '/-',
        value: {
          ingredientPattern: 'T\tB',
          ingredients: {
            T: { type: 'item', code: 'knifeblade-' + stone_type },
            B: { type: 'item', code: 'bone' },
          },
          width: 1,
          height: 2,
          output: { type: 'item', code: 'knife-generic-bone' + stone_type, quantity: 1 },
        },
        file: 'game:recipes/grid/tool/knife.json',
      },
      {
        op: 'add',
        path: '/ingredient/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/knapping/stone-knife.json',
      },
      {
        op: 'add',
        path: '/ingredient/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/knapping/stone-knife.json',
      },
    ],
  add_stone_hoe_patch(stone_type, durability, mining_speed, attack_power)::
    [
      {
        op: 'addmerge',
        path: '/variantgroups/0/states/-',
        value: stone_type,
        file: 'game:itemtypes/tool/hoe.json',
      },
      {
        op: 'addmerge',
        path: '/shapeByType/*-' + stone_type,
        value: { base: 'item/tool/hoe-stone' },
        file: 'game:itemtypes/tool/hoe.json',
      },
      {
        op: 'addmerge',
        path: '/miningspeedbytype/hoe-' + stone_type,
        value: {
          soil: mining_speed,
        },
        file: 'game:itemtypes/tool/hoe.json',
      },
      {
        op: 'addmerge',
        path: '/durabilitybytype/hoe-' + stone_type,
        value: durability,
        file: 'game:itemtypes/tool/hoe.json',
      },
      {
        op: 'addmerge',
        path: '/attackpowerbytype/hoe-' + stone_type,
        value: attack_power,
        file: 'game:itemtypes/tool/hoe.json',
      },
      {
        op: 'addmerge',
        path: '/variantgroups/0/states/-',
        value: stone_type,
        file: 'game:itemtypes/toolhead/hoehead.json',
      },
      {
        op: 'addmerge',
        path: '/texturesByType/hoehead-' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
          string: { base: 'block/transparent' },
          handle: { base: 'block/transparent' },
        },
        file: 'game:itemtypes/toolhead/hoehead.json',
      },
      {
        op: 'add',
        path: '/ingredient/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/knapping/stone-hoe.json',
      },
    ],
  add_stone_shovel_patch(stone_type, durability, attack_power)::
    [
      {
        op: 'addmerge',
        path: '/variantgroups/0/states/-',
        value: stone_type,
        file: 'game:itemtypes/tool/shovel.json',
      },
      {
        op: 'addmerge',
        path: '/shapeByType/*-' + stone_type,
        value: { base: 'item/tool/shovel-stone' },
        file: 'game:itemtypes/tool/shovel.json',
      },
      {
        op: 'addmerge',
        path: '/texturesByType/*-' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
        },
        file: 'game:itemtypes/tool/shovel.json',
      },
      {
        op: 'addmerge',
        path: '/miningspeedbytype/shovel-' + stone_type,
        value: {
          soil: 2.2,
          sand: 2.2,
          gravel: 1.9,
          snow: 1.9,
        },
        file: 'game:itemtypes/tool/shovel.json',
      },
      {
        op: 'addmerge',
        path: '/durabilitybytype/shovel-' + stone_type,
        value: durability,
        file: 'game:itemtypes/tool/shovel.json',
      },
      {
        op: 'addmerge',
        path: '/attackpowerbytype/shovel-' + stone_type,
        value: attack_power,
        file: 'game:itemtypes/tool/shovel.json',
      },
      {
        op: 'addmerge',
        path: '/variantgroups/0/states/-',
        value: stone_type,
        file: 'game:itemtypes/toolhead/shovelhead.json',
      },
      {
        op: 'addmerge',
        path: '/texturesByType/shovelhead-' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
          string: { base: 'block/transparent' },
          handle: { base: 'block/transparent' },
        },
        file: 'game:itemtypes/toolhead/shovelhead.json',
      },
      {
        op: 'add',
        path: '/ingredient/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/knapping/stone-shovel.json',
      },
    ],
  add_stone_spear_patch(stone_type, durability, attack_power, thrown_damage)::
    [
      {
        op: 'addmerge',
        path: '/variantgroups/1/states/-',
        value: stone_type,
        file: 'game:itemtypes/tool/spear.json',
      },
      {
        op: 'addmerge',
        path: '/shapeByType/spear-generic-' + stone_type,
        value: { base: 'item/tool/spear/stone' },
        file: 'game:itemtypes/tool/spear.json',
      },
      {
        op: 'addmerge',
        path: '/texturesByType/spear-generic-' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
        },
        file: 'game:itemtypes/tool/spear.json',
      },
      {
        op: 'addmerge',
        path: '/attackpowerbytype/spear-generic-' + stone_type,
        value: attack_power,
        file: 'game:itemtypes/tool/spear.json',
      },
      {
        op: 'addmerge',
        path: '/durabilitybytype/spear-generic-' + stone_type,
        value: durability,
        file: 'game:itemtypes/tool/spear.json',
      },
      {
        op: 'addmerge',
        path: '/attributes/damageByType/*-' + stone_type,
        value: thrown_damage,
        file: 'game:itemtypes/tool/spear.json',
      },
      {
        op: 'addmerge',
        path: '/variantgroups/0/states/-',
        value: stone_type,
        file: 'game:itemtypes/toolhead/spearhead.json',
      },
      {
        op: 'addmerge',
        path: '/texturesByType/spearhead-' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
          string: { base: 'block/transparent' },
          handle: { base: 'block/transparent' },
        },
        file: 'game:itemtypes/toolhead/spearhead.json',
      },
      {
        op: 'addmerge',
        path: '/shapeByType/spearhead-' + stone_type,
        value: { base: 'item/tool/spear/stone' },
        file: 'game:itemtypes/toolhead/spearhead.json',
      },
      {
        op: 'addmerge',
        path: '/variantgroups/1/states/-',
        value: stone_type,
        file: 'game:entities/spear.json',
      },
      {
        op: 'addmerge',
        path: '/client/texturesByType/spear-generic-' + stone_type,
        value: {
          material: { base: 'block/stone/rock/' + stone_type + '1' },
        },
        file: 'game:entities/spear.json',
      },
      {
        op: 'addmerge',
        path: '/ingredients/T/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/grid/tool/spear.json',
      },
      {
        op: 'add',
        path: '/ingredient/allowedVariants/-',
        value: stone_type,
        file: 'game:recipes/knapping/stone-spear.json',
      },
    ],
}
