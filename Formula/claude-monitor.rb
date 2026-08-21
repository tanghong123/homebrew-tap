class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.97.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0eda9b58bfedf59baa190fe22b5ecd015705f200bda8adcc9dd07c9521dd966e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fb16c18f0eb36c1fd5225dbeceb506122aa967fd93f10b8d9baf5f93c05a2cb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b4721de3f60b7012800b6b5715cdb034551db327c8883a5361132e929f8dc0f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "683342c4bfc970734155c40e7db681a42c12cca8488869c9239b662d7fba8bff"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
