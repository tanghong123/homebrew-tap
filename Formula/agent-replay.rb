class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.413.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c69f084ccfcc62addfa943a755182f90df41f159ade8ba76859655d48c4e30c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bb38f6b7669f6886817a505829d4e5a80752a7c7d68939bbd224665381defb5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "284d2be0ba004b6e1f66932528eff6f9095b745f6bfe6a97f3ca98d496c6bdc4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dbb6f40a6d3d307318dcdc7a8bc20422b4503946abbff1d9b2281518f7f4381a"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
