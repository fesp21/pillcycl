GIT_DEPLOY_REPO=${GIT_DEPLOY_REPO:-$(node -e 'process.stdout.write(require("./package.json").repository)')}

cd dist && \
$(npm bin)/rimraf .git
git init && \
git add . && \
git commit -m "Deploy to GitHub Pages" && \
git push --force "${GIT_DEPLOY_REPO}" master:gh-pages

# ! #
# IF YOU USE A USERNAME.GITHUB.IO ROOT DOMAIN, PLEASE READ THE WARNING BELOW
# ! #
