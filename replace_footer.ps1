$files = Get-ChildItem -Path . -Filter "*.html" | Where-Object { $_.Name -ne "index.html" }

$german_nav = @{
    'href="index.html">Home</a>' = 'href="index.html">Startseite</a>'
    'href="about.html">About Us</a>' = 'href="about.html">Über uns</a>'
    'href="services.html">Services</a>' = 'href="services.html">Leistungen</a>'
    'href="process.html">Process & Fees</a>' = 'href="process.html">Ablauf & Kosten</a>'
    'href="contact.html">Contact</a>' = 'href="contact.html">Kontakt</a>'
    'href="contact.html" class="active">Contact</a>' = 'href="contact.html" class="active">Kontakt</a>'
    'href="services.html" class="active">Services</a>' = 'href="services.html" class="active">Leistungen</a>'
    'href="process.html" class="active">Process & Fees</a>' = 'href="process.html" class="active">Ablauf & Kosten</a>'
    'href="about.html" class="active">About Us</a>' = 'href="about.html" class="active">Über uns</a>'
    'style="padding: 8px 16px; font-size: 0.9rem;">Consultation</a>' = 'style="padding: 8px 16px; font-size: 0.9rem;">Beratung</a>'
    'lang="en"' = 'lang="de"'
}

$english_footer = "    <footer class=`"footer`">
        <div class=`"container`">
            <div class=`"footer-grid`">
                <div class=`"footer-col`">
                    <a href=`"index.html`" class=`"logo`" style=`"color: white; margin-bottom: 1.5rem;`">
                        <i class=`"fa-solid fa-scale-balanced`" style=`"color: var(--accent-color);`"></i>
                        <div>
                            Notar<span style=`"color: rgba(255,255,255,0.7)`">Web</span>
                        </div>
                    </a>
                    <p>Providing legal certainty with trust and clarity for all your real estate, corporate, family, and inheritance matters.</p>
                </div>

                <div class=`"footer-col`">
                    <h3>Contact Us</h3>
                    <div class=`"footer-contact-item`">
                        <i class=`"fa-solid fa-location-dot`"></i>
                        <p>19 Kronenweg<br>Wesseling<br>North Rhine-Westphalia</p>
                    </div>
                    <div class=`"footer-contact-item`">
                        <i class=`"fa-solid fa-phone`"></i>
                        <a href=`"tel:15566284478`">15566284478</a>
                    </div>
                    <div class=`"footer-contact-item`">
                        <i class=`"fa-solid fa-envelope`"></i>
                        <a href=`"mailto:info@notarweb-example.com`">info@notarweb-example.com</a>
                    </div>
                </div>

                <div class=`"footer-col`">
                    <h3>Quick Links</h3>
                    <a href=`"index.html`">Home</a>
                    <a href=`"about.html`">About Us</a>
                    <a href=`"services.html`">Services</a>
                    <a href=`"process.html`">Process & Fees</a>
                    <a href=`"contact.html`">Contact</a>
                </div>

                <div class=`"footer-col`">
                    <h3>Legal</h3>
                    <a href=`"imprint.html`">Legal Notice (Imprint)</a>
                    <a href=`"privacy.html`">Privacy Policy</a>
                    <a href=`"terms.html`">Terms and Conditions</a>
                </div>
            </div>

            <div class=`"footer-bottom`">
                <p>&copy; 2026 NotarWeb. All rights reserved.</p>
            </div>
        </div>
    </footer>"

$english_footer_alt = "    <footer class=`"footer`">
        <div class=`"container`">
            <div class=`"footer-grid`">
                <div class=`"footer-col`">
                    <a href=`"index.html`" class=`"logo`" style=`"color: white; margin-bottom: 1.5rem;`">
                        <i class=`"fa-solid fa-scale-balanced`" style=`"color: var(--accent-color);`"></i>
                        <div>
                            Notar<span style=`"color: rgba(255,255,255,0.7)`">Web</span>
                        </div>
                    </a>
                    <p>Providing legal certainty with trust and clarity for all your real estate, corporate, family, and
                        inheritance matters.</p>
                </div>

                <div class=`"footer-col`">
                    <h3>Contact Us</h3>
                    <div class=`"footer-contact-item`">
                        <i class=`"fa-solid fa-location-dot`"></i>
                        <p>19 Kronenweg<br>Wesseling<br>North Rhine-Westphalia</p>
                    </div>
                    <div class=`"footer-contact-item`">
                        <i class=`"fa-solid fa-phone`"></i>
                        <a href=`"tel:15566284478`">15566284478</a>
                    </div>
                    <div class=`"footer-contact-item`">
                        <i class=`"fa-solid fa-envelope`"></i>
                        <a href=`"mailto:info@notarweb-example.com`">info@notarweb-example.com</a>
                    </div>
                </div>

                <div class=`"footer-col`">
                    <h3>Quick Links</h3>
                    <a href=`"index.html`">Home</a>
                    <a href=`"about.html`">About Us</a>
                    <a href=`"services.html`">Services</a>
                    <a href=`"process.html`">Process & Fees</a>
                    <a href=`"contact.html`">Contact</a>
                </div>

                <div class=`"footer-col`">
                    <h3>Legal</h3>
                    <a href=`"imprint.html`">Legal Notice (Imprint)</a>
                    <a href=`"privacy.html`">Privacy Policy</a>
                    <a href=`"terms.html`">Terms and Conditions</a>
                </div>
            </div>

            <div class=`"footer-bottom`">
                <p>&copy; 2026 NotarWeb. All rights reserved.</p>
            </div>
        </div>
    </footer>"

$german_footer = "    <footer class=`"footer`">
        <div class=`"container`">
            <div class=`"footer-grid`">
                <div class=`"footer-col`">
                    <a href=`"index.html`" class=`"logo`" style=`"color: white; margin-bottom: 1.5rem;`">
                        <i class=`"fa-solid fa-scale-balanced`" style=`"color: var(--accent-color);`"></i>
                        <div>
                            Notar<span style=`"color: rgba(255,255,255,0.7)`">Web</span>
                        </div>
                    </a>
                    <p>Wir bieten Rechtssicherheit mit Vertrauen und Klarheit für alle Ihre Immobilien-, Gesellschafts-,
                        Familien- und Erbschaftsangelegenheiten.</p>
                </div>

                <div class=`"footer-col`">
                    <h3>Kontakt</h3>
                    <div class=`"footer-contact-item`">
                        <i class=`"fa-solid fa-location-dot`"></i>
                        <p>Kronenweg 19<br>Wesseling<br>Nordrhein-Westfalen</p>
                    </div>
                    <div class=`"footer-contact-item`">
                        <i class=`"fa-solid fa-phone`"></i>
                        <a href=`"tel:15566284478`">15566284478</a>
                    </div>
                    <div class=`"footer-contact-item`">
                        <i class=`"fa-solid fa-envelope`"></i>
                        <a href=`"mailto:info@notarweb-example.com`">info@notarweb-example.com</a>
                    </div>
                </div>

                <div class=`"footer-col`">
                    <h3>Schnellzugriff</h3>
                    <a href=`"index.html`">Startseite</a>
                    <a href=`"about.html`">Über uns</a>
                    <a href=`"services.html`">Leistungen</a>
                    <a href=`"process.html`">Ablauf & Kosten</a>
                    <a href=`"contact.html`">Kontakt</a>
                </div>

                <div class=`"footer-col`">
                    <h3>Rechtliches</h3>
                    <a href=`"imprint.html`">Impressum</a>
                    <a href=`"privacy.html`">Datenschutz</a>
                    <a href=`"terms.html`">AGB</a>
                </div>
            </div>

            <div class=`"footer-bottom`">
                <p>&copy; 2026 NotarWeb. Alle Rechte vorbehalten.</p>
            </div>
        </div>
    </footer>"

foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText($file.FullName)
    
    foreach ($key in $german_nav.Keys) {
        $content = $content.Replace($key, $german_nav[$key])
    }
    
    $content = $content.Replace($english_footer, $german_footer)
    $content = $content.Replace($english_footer_alt, $german_footer)
    
    [System.IO.File]::WriteAllText($file.FullName, $content)
    Write-Host "Updated $($file.Name)"
}
