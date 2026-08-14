class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a92183aaced31a0bbc85fb517575e5be0461e061dc33f0845d9d5dccfca3b883"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "00eb3aec5a8a4906babb89bcaab9aef7bb6ea5b16ec3762469ab5315bbd339d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "582f953b4c732738d601afc291168cc702159de0a6c084cd138e68f3f4f63c1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b4beed4eb8cc324452c60b84ac65ba2917182cb55d38f2fef7eddd58ed273266"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
