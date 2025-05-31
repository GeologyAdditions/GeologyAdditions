local itemtypes = import 'itemtypes.libsonnet';

{
  'axe-stone.json': [
                      {
                        op: 'remove',
                        path: '/texturesByType/*',
                        file: 'game:itemtypes/tool/axe-stone.json',
                      },
                      {
                        op: 'remove',
                        path: '/texturesByType/*',
                        file: 'game:itemtypes/toolhead/axehead.json',
                      },
                      {
                        op: 'addmerge',
                        path: '/texturesByType/@axehead-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|meteoriciron|steel)',
                        value: {
                          material: { base: 'block/metal/ingot/{material}' },
                          string: { base: 'block/transparent' },
                          handle: { base: 'block/transparent' },
                        },
                        file: 'game:itemtypes/toolhead/axehead.json',
                      },
                    ]
                    + itemtypes.add_stone_axe_patch('diorite', 60)
                    + itemtypes.add_stone_axe_patch('gabbro', 60)
                    + itemtypes.add_stone_axe_patch('jade', 80)
                    + itemtypes.add_stone_axe_patch('jasper', 80)
                    + itemtypes.add_stone_axe_patch('quartzite', 80),

  'knife.json': [
                  {
                    op: 'remove',
                    path: '/shapeByType/*',
                    file: 'game:itemtypes/tool/knife.json',
                  },
                  {
                    op: 'addmerge',
                    path: '/shapeByType/@knife-generic-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|steel|meteoriciron)',
                    file: 'game:itemtypes/tool/knife.json',
                    value: { base: 'item/tool/knife/copper' },
                  },
                  {
                    op: 'remove',
                    path: '/texturesByType/knife-generic-*',
                    file: 'game:itemtypes/tool/knife.json',
                  },
                  {
                    op: 'addmerge',
                    path: '/texturesByType/@knife-generic-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|steel|meteoriciron)',
                    value: {
                      material: { base: 'block/metal/ingot/{material}' },
                    },
                    file: 'game:itemtypes/tool/knife.json',
                  },
                  {
                    op: 'remove',
                    path: '/texturesByType/*',
                    file: 'game:itemtypes/toolhead/knifeblade.json',
                  },
                  {
                    op: 'addmerge',
                    path: '/texturesByType/@knifeblade-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|steel|meteoriciron)',
                    value: {
                      material: { base: 'block/metal/ingot/{material}' },
                      string: { base: 'block/transparent' },
                      handle: { base: 'block/transparent' },
                    },
                    file: 'game:itemtypes/toolhead/knifeblade.json',
                  },
                  {
                    op: 'addmerge',
                    path: '/0/ingredients/T/allowedVariants',
                    value: [
                      'copper',
                      'tinbronze',
                      'bismuthbronze',
                      'blackbronze',
                      'gold',
                      'silver',
                      'iron',
                      'meteoriciron',
                      'steel',
                      'chert',
                      'flint',
                      'granite',
                      'andesite',
                      'basalt',
                      'obsidian',
                      'peridotite',
                    ],
                    file: 'game:recipes/grid/tool/knife.json',
                  },
                ]
                + itemtypes.add_stone_knife_patch('diorite', 90, 1, 0.75)
                + itemtypes.add_stone_knife_patch('gabbro', 90, 1, 0.75)
                + itemtypes.add_stone_knife_patch('jade', 120, 1.2, 0.9)
                + itemtypes.add_stone_knife_patch('jasper', 120, 1.2, 0.9)
                + itemtypes.add_stone_knife_patch('quartzite', 120, 1.2, 0.9),
  'hoe.json': [
                {
                  op: 'remove',
                  path: '/texturesByType/*',
                  file: 'game:itemtypes/toolhead/hoehead.json',
                },
                {
                  op: 'addmerge',
                  path: '/texturesByType/@hoehead-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|steel|meteoriciron)',
                  value: {
                    material: { base: 'block/metal/ingot/{material}' },
                    string: { base: 'block/transparent' },
                    handle: { base: 'block/transparent' },
                  },
                  file: 'game:itemtypes/toolhead/hoehead.json',
                },
              ] + itemtypes.add_stone_hoe_patch('diorite', 30, 1.8, 1)
              + itemtypes.add_stone_hoe_patch('gabbro', 30, 1.8, 1)
              + itemtypes.add_stone_hoe_patch('jade', 35, 1.9, 1)
              + itemtypes.add_stone_hoe_patch('jasper', 35, 1.9, 1)
              + itemtypes.add_stone_hoe_patch('quartzite', 35, 1.9, 1),
  'shovel.json': [
                   {
                     op: 'remove',
                     path: '/texturesByType/*',
                     file: 'game:itemtypes/tool/shovel.json',
                   },
                   {
                     op: 'addmerge',
                     path: '/texturesByType/@shovel-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|steel|meteoriciron)',
                     value: {
                       material: { base: 'block/metal/ingot/{material}' },
                     },
                     file: 'game:itemtypes/tool/shovel.json',
                   },
                   {
                     op: 'remove',
                     path: '/texturesByType/*',
                     file: 'game:itemtypes/toolhead/shovelhead.json',
                   },
                   {
                     op: 'addmerge',
                     path: '/texturesByType/@shovelhead-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|steel|meteoriciron)',
                     value: {
                       material: { base: 'block/metal/ingot/{material}' },
                       string: { base: 'block/transparent' },
                       handle: { base: 'block/transparent' },
                     },
                     file: 'game:itemtypes/toolhead/shovelhead.json',
                   },
                 ] + itemtypes.add_stone_shovel_patch('diorite', 60, 0.75)
                 + itemtypes.add_stone_shovel_patch('gabbro', 60, 0.75)
                 + itemtypes.add_stone_shovel_patch('jade', 75, 1)
                 + itemtypes.add_stone_shovel_patch('jasper', 75, 1)
                 + itemtypes.add_stone_shovel_patch('quartzite', 75, 1),
  'spear.json': [
                  {
                    op: 'remove',
                    path: '/texturesByType/spear-generic-*',
                    file: 'game:itemtypes/tool/spear.json',
                  },
                  {
                    op: 'remove',
                    path: '/texturesByType/*',
                    file: 'game:itemtypes/toolhead/spearhead.json',
                  },
                  {
                    op: 'addmerge',
                    path: '/texturesByType/@spearhead-(copper|tinbronze|bismuthbronze|blackbronze)',
                    value: {
                      material: { base: 'block/metal/ingot/{material}' },
                      string: { base: 'block/transparent' },
                      handle: { base: 'block/transparent' },
                    },
                    file: 'game:itemtypes/toolhead/spearhead.json',
                  },
                  {
                    op: 'remove',
                    path: '/client/texturesByType/*',
                    file: 'game:entities/spear.json',
                  },
                  {
                    op: 'addmerge',
                    path: '/client/texturesByType/@spear-(copper|tinbronze|bismuthbronze|blackbronze)',
                    value: {
                      material: { base: 'block/metal/ingot/{material}' },
                      string: { base: 'block/transparent' },
                      handle: { base: 'block/transparent' },
                    },
                    file: 'game:entities/spear.json',
                  },
                ] + itemtypes.add_stone_spear_patch('diorite', 16, 1.75, 4)
                + itemtypes.add_stone_spear_patch('gabbro', 16, 1.75, 4)
                + itemtypes.add_stone_spear_patch('jade', 24, 2, 5)
                + itemtypes.add_stone_spear_patch('jasper', 24, 2, 5)
                + itemtypes.add_stone_spear_patch('quartzite', 24, 2, 5),
}
