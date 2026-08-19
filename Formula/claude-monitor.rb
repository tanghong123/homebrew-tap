class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.95.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d0d452ff773558c260a14a49007827d93399a2e7f7216cb085df2938b0aa3278"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "51c62052bd1eac7c9f0764b1d0b96fbd5e6230a940ac07ff29219d6243269b34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "434ed1d835522b7b30a27fb8c02b9f78a7f584d40fe593e0681d724693941d73"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b523e0c804288652fec9557725c6ff93fdd60f1e94a7540202250d8588bea2aa"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
