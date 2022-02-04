[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [string]
    $ApimInstanceName,
    
    [Parameter(Mandatory = $true)]
    [string]
    $APIMSubscription,

    [Parameter(Mandatory = $true)]
    [string]
    $APIMResourceGroup
)


function Get-APIM {
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $ApimInstanceName,
        
        [Parameter(Mandatory = $true)]
        [ParameterType]
        $APIMSubscription,
    
        [Parameter(Mandatory = $true)]
        [string]
        $APIMResourceGroup
    )

    Select-AzSubscription -Subscription $APIMSubscription
    $apim = Get-AzApiManagement -ResourceGroupName $APIMResourceGroup -Name $ApimInstanceName

    return $apim
    
}

function New-APIDefinition {
    param (
        $apim
    )

    
}