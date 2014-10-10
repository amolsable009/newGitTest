trigger OpportunityTrigger on Opportunity (after insert, after update, before insert, before update) {
	
	system.debug('==== OpportunityTrigger : ');
	
	
}

touch README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/amolsable009/newGitTest.git
git push -u origin master



git remote add origin https://github.com/amolsable009/newGitTest.git
git push -u origin master

OPTIONS

--local
-l
When the repository to clone from is on a local machine, this flag bypasses the normal "Git aware" transport mechanism and clones the repository by making a copy of HEAD and everything under objects and refs directories. The files under .git/objects/ directory are hardlinked to save space when possible.

If the repository is specified as a local path (e.g., /path/to/repo), this is the default, and --local is essentially a no-op. If the repository is specified as a URL, then this flag is ignored (and we never use the local optimizations). Specifying --no-local will override the default when /path/to/repo is given, using the regular Git transport instead.

--no-hardlinks
Force the cloning process from a repository on a local filesystem to copy the files under the .git/objects directory instead of using hardlinks. This may be desirable if you are trying to make a back-up of your repository.

--shared
-s
When the repository to clone is on the local machine, instead of using hard links, automatically setup .git/objects/info/alternates to share the objects with the source repository. The resulting repository starts out without any object of its own.

NOTE: this is a possibly dangerous operation; do not use it unless you understand what it does. If you clone your repository using this option and then delete branches (or use any other Git command that makes any existing commit unreferenced) in the source repository, some objects may become unreferenced (or dangling). These objects may be removed by normal Git operations (such as git commit) which automatically call git gc --auto. (See git-gc(1).) If these objects are removed and were referenced by the cloned repository, then the cloned repository will become corrupt.

Note that running git repack without the -l option in a repository cloned with -s will copy objects from the source repository into a pack in the cloned repository, removing the disk space savings of clone -s. It is safe, however, to run git gc, which uses the -l option by default.

If you want to break the dependency of a repository cloned with -s on its source repository, you can simply run git repack -a to copy all objects from the source repository into a pack in the cloned repository.

--reference <repository>
If the reference repository is on the local machine, automatically setup .git/objects/info/alternates to obtain objects from the reference repository. Using an already existing repository as an alternate will require fewer objects to be copied from the repository being cloned, reducing network and local storage costs.

NOTE: see the NOTE for the --shared option.

--quiet