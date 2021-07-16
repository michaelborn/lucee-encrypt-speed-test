<cfscript>
writeOutput( server.coldfusion.productVersion );
i = 0;
c = repeatString("xxx", 512*5);
for( i = 0; i <= 10; i++ ) {
    cftimer( type="outline" ){
        writeOutput( "<br>" & len(c) & "<br>" );
        encrypt( c, generateSecretKey( "AES" ), "AES", "HEX" );
    }
    c=c&c;
    writeOutput(i & " " & now() & "<br>");
    cfflush();
}
</cfscript>