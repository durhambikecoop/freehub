import "@hotwired/turbo-rails"
import Alpine from 'alpinejs'
import Persist from '@alpinejs/persist'
const Data = import.meta.glob('./data/**/*-data.js')

const { default: AlpineData, filenames } = Data

/**
 * @param {string} str - string to transform
 * @returns {string} - PascalCase string
 * @example - /asdf/asdf -> AsdfAsdf
 */
const toPascalFromSlash = (str) => {
  return str.replace(/\/(.?)/g, (_m, group1) => {
    return group1.toUpperCase()
  })
}
Alpine.plugin(Persist)

filenames.forEach((filename, index) => {
  // filename is like: ./data/navigation/link-data.js
  // we need to transform it to: NavigationLink

  // capture group
  const r = /^\.\/data(.+)-data\.js$/g
  // get the capture group

  const match = r.exec(filename)
  // get the capture group, to Pas
  const PascalCaseFilename = toPascalFromSlash(match[1])
  // add the data to the AlpineData object
  const module = AlpineData[index]

  Alpine.data(PascalCaseFilename, module.default)
})

import "alpine-turbo-drive-adapter"

window.Alpine = Alpine
Alpine.start()
