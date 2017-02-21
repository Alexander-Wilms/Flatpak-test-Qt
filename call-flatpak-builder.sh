echo -e "\e[34mremove helloflatpakqt dir\e[0m"
rm -r -f helloflatpakqt
echo -e "\e[34mremove .flatpak-builder dir\e[0m"
rm -r -f .flatpak-builder
echo -e "\e[34mdelete old repo\e[0m"
flatpak --user remote-delete helloflatpakqtrepo
echo -e "\e[34mexecute flatpak-builder\e[0m"
flatpak-builder --repo=repo helloflatpakqt org.test.Helloflatpakqt.json
echo -e "\e[34madd the new repository\e[0m"
flatpak --user remote-add --no-gpg-verify --if-not-exists helloflatpakqtrepo repo
echo -e "\e[34mtry to uninstall the old flatpak\e[0m"
flatpak --user uninstall org.test.Helloflatpakqt
echo -e "\e[34minstall the flatpak\e[0m"
flatpak --user install helloflatpakqtrepo org.test.Helloflatpakqt
echo -e "\e[34mrun the flatpak\e[0m"
flatpak run org.test.Helloflatpakqt
