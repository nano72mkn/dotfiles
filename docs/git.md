# Git Configuration

## Aliases

```bash
git st    # status
git co    # checkout
git ci    # commit
git sw    # switch
git br    # branch
git df    # diff
git lg    # log --oneline --graph --decorate
```

## Git Worktree

Git worktreeを使うと、同じリポジトリの複数ブランチを別ディレクトリで同時に開ける。

### Basic aliases

```bash
git wt      # worktree
git wta     # worktree add
git wtl     # worktree list
git wtrm    # worktree remove
git wtp     # worktree prune
```

### Shell functions (fzf integration)

| Command | Description |
|---------|-------------|
| `gwt` | fzfでworktreeを選択してcd |
| `gwta [branch]` | worktreeを作成してcd |
| `gwtrm` | fzfでworktreeを選択して削除 |

### Usage examples

```bash
# List worktrees
git wtl

# Select worktree with fzf and cd
gwt

# Add worktree for existing branch
gwta feature/login
# Creates: ../repo-feature/login

# Add worktree (select branch with fzf)
gwta

# Add worktree for new branch
git wta ../repo-new-feature -b new-feature

# Remove worktree with fzf
gwtrm

# Clean up stale worktrees
git wtp
```

### Auto-copy gitignored files

`gwta`はworktree作成時に`.gitignore`で除外されているファイルを自動コピーする。

**コピーされる例:**
- `.env`, `.env.local`
- `.env.development.local`
- IDE設定ファイル

**除外されるもの（大きいディレクトリ等）:**
- `node_modules`, `.git`, `dist`, `build`
- `coverage`, `__pycache__`, `.venv`
- `*.log`

除外パターンをカスタマイズするにはzshrcの`GWT_COPY_EXCLUDE`を編集:

```bash
GWT_COPY_EXCLUDE=(node_modules .git dist build coverage __pycache__ .venv venv "*.log")
```

### Typical workflow

```bash
# 1. Main repo is at ~/ghq/github.com/user/project

# 2. Create worktree for feature branch
cd ~/ghq/github.com/user/project
gwta feature/awesome
# Now at: ~/ghq/github.com/user/project-feature/awesome

# 3. Work on feature in the new worktree
# (main branch stays untouched in original directory)

# 4. Switch between worktrees
gwt  # fzf shows all worktrees

# 5. Clean up when done
gwtrm
```

### Directory structure

```
~/ghq/github.com/user/
├── project/              # main worktree (main branch)
├── project-feature/login # worktree for feature/login
└── project-hotfix/bug    # worktree for hotfix/bug
```
