class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.112.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "82131f5ad7038a685e8d0e5bd29fde3cf263841e0ad2f794456a2d477009f83a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1068beb2571a97bbfc35099d70340854b214ebb85bac2f54d131c4528e14a389"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d8baaf5e70e34a4ef6b0017d94e8c47dd9ea0bc0be65c241d46b947889b51e5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f07cba18200f6dc833ab0702280e5bfc860f853df375bb0c1954601203f4e7b9"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
