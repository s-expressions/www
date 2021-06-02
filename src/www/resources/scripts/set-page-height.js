function setPageHeight ()
{
    var i;

    var contents = document.getElementsByClassName ("k-content");
    var contentHeight = 0;
    for (i = 0; i < contents.length; i++) contentHeight += contents[i].clientHeight;

    var sections = document.getElementsByTagName ("section");
    var sectionHeight = 0;
    for (i = 0; i < sections.length; i++) sectionHeight += sections[i].clientHeight;

    var minHeight = sectionHeight + contentHeight + 72;


    var footers = document.getElementsByTagName('footer');
    var footerHeight = 0;
    

    
    for (i = 0; i < footers.length; i++) footerHeight += footers[i].clientHeight;

    footerHeight -= footers.length - 1; 



    var kPage = document.getElementById('k-page');
    kPage.style.minHeight = minHeight.toString() + 'px';
    kPage.style.marginTop = "-" + footerHeight.toString() + 'px';
    kPage.style.marginBottom = "-" + footerHeight.toString() + 'px';
    kPage.style.paddingTop = footerHeight.toString() + 'px';


}
