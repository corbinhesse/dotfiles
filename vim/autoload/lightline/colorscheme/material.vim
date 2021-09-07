if (exists('g:lightline'))
  let s:palette = { 'normal': {}, 'inactive': {},'tabline': {} }

  " Normal
  let s:palette.normal.left = [
    \[ g:material_colorscheme_map.bg, g:material_colorscheme_map.yellow ],
    \[ g:material_colorscheme_map.bg, g:material_colorscheme_map.red ],
    \[ g:material_colorscheme_map.gray100, g:material_colorscheme_map.gray700 ],
  \]
  let s:palette.normal.middle = [
    \[ g:material_colorscheme_map.gray100, g:material_colorscheme_map.gray700 ]
  \]
  let s:palette.normal.right = [
    \[ g:material_colorscheme_map.gray100, g:material_colorscheme_map.gray700 ],
  \]

  " Inactive
  let s:palette.inactive.left = [
    \[ g:material_colorscheme_map.yellow, g:material_colorscheme_map.yellow_diff_text ],
    \[ g:material_colorscheme_map.red, g:material_colorscheme_map.red_diff ],
  \]
  let s:palette.inactive.middle = [
    \[ g:material_colorscheme_map.gray600, g:material_colorscheme_map.gray900 ]
  \]
  let s:palette.inactive.right = [
    \[ g:material_colorscheme_map.gray600, g:material_colorscheme_map.gray900 ]
  \]

  " Tabline
  let s:palette.tabline.left = [
    \[ g:material_colorscheme_map.gray600, g:material_colorscheme_map.bg ]
  \]
  let s:palette.tabline.middle = [
    \[ g:material_colorscheme_map.gray600, g:material_colorscheme_map.bg ]
  \]
  let s:palette.tabline.tabsel = [
    \[ g:material_colorscheme_map.gray100, g:material_colorscheme_map.bg ]
  \]
  let s:palette.tabline.right = [
    \[ g:material_colorscheme_map.gray200, g:material_colorscheme_map.bg ]
  \]

  let g:lightline#colorscheme#material#palette = lightline#colorscheme#fill(s:palette)
endif
