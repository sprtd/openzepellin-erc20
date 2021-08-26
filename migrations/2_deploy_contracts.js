const SampleToken = artifacts.require('SampleToken')
const DavToken = artifacts.require('DavToken')



module.exports = async deployer => {
  await deployer.deploy(SampleToken)
  const sampleToken = await SampleToken.deployed() 
  console.log('this is sample token', sampleToken.address)

  await deployer.deploy(DavToken)
  const davToken = await DavToken.deployed()
  console.log('DavToken contract addtress: ', davToken.address)

}