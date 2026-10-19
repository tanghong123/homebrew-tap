class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.394.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "61d44c61136b9548b9f937d373de7628a457ec09f8b37ee77e5029d9da5e661f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8f7da912fc827fcd12bd9dad136678c4941cadeffd643110040f32bbd4d548b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a6cf10c40f1ffa051da74717b3515ceb230b6da4a14a6812304a3b17aedcaf1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41321bc55412bc6d89669d4c4cd280b00fffbd5c4c0e6439ab8c0c0084a32826"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
