<cfscript>
    /**
 * small image - this completes in about 1 second
 */
cftimer( label="timer", type="inline" ){
    cfhttp( url="https://source.unsplash.com/random/300x400", result="imagebinary" );
    result = encrypt( imagebinary.filecontent, generateSecretKey( "AES" ), "AES", "HEX" );
}
writeOutput("<br>");

/**
 * large image, does not complete in 60 seconds
 */
cftimer( label="timer", type="inline" ){
    cfhttp( url="https://source.unsplash.com/random/3000x3000", result="imagebinary" );
    result = encrypt( imagebinary.filecontent, generateSecretKey( "AES" ), "AES", "HEX" );
}
</cfscript>