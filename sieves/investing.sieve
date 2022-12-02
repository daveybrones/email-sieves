require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Commonly used investing platforms
elsif address :matches :domain "from" ["*troweprice.com", "*e-vanguard.com", "*vanguard.com", "*webull.com", "*coinbase.com", "*robinhood.com", "*fidelity.com", "*prudential.com"]
{
    fileinto "Investing";
    expire "day" "365";
    stop; 
}
