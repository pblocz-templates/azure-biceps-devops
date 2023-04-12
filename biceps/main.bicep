// @description('Client Id that is going to be used to log into az-cli')
// param identityClientId string

// @description('Client Secret that is going to be used to log into az-cli')
// @secure()
// param identityClientSecret string

param someOther string

output someOther string = someOther
