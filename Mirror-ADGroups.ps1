$UserToCopy = Read-Host "Enter username whose AD groups will be copied: "
$UserThatNeedsGroups = Read-Host "Enter username that needs the AD groups: "
$MirrorAssociate = ($MirrorAssociate = Get-ADuser -Identity $UserToCopy -Properties MemberOf).memberof
$MirrorAssociate | Add-ADGroupMember -Members $UserThatNeedsGroups