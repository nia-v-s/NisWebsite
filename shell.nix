{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs # Docusaurus requires Node.js 18.0+ or 20.0+
    # Alternative package managers:
    yarn
    pnpm
    bun
  ];

  shellHook = ''
    echo "⚡ Docusaurus Development Environment Ready! ⚡"
    echo "Run 'npx create-docusaurus@latest my-website classic' to start a new site."
  '';
}
