require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Delete after 30 days (no need to retain routine update emails)
# These emails get routed to the main inbox
if address :matches :domain "from" ["*wallethub.com", "*nerdwallet.com", "*experian.com", "*equifax.com", "*creditkarma.com", "*creditsesame.com"]
{
    expire "day" "30";
    stop;
}

# Commonly used financial services
elsif address :matches :domain "from" ["*nerdwallet.com", "*experian.com", "*equifax.com", "*creditkarma.com", "*creditsesame.com", "*wallethub.com", "*pnc.com", "*capitalone.com", "*chase.com", "*paypal.com", "*venmo.com", "*discover.com"]
{
    fileinto "Finance";
    expire "day" "365";
    stop;
}
