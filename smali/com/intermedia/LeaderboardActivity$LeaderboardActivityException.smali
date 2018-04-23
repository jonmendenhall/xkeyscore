.class Lcom/intermedia/LeaderboardActivity$LeaderboardActivityException;
.super Ljava/lang/RuntimeException;
.source "LeaderboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/LeaderboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeaderboardActivityException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/LeaderboardActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/LeaderboardActivity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/intermedia/LeaderboardActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    iput-object p1, p0, Lcom/intermedia/LeaderboardActivity$LeaderboardActivityException;->this$0:Lcom/intermedia/LeaderboardActivity;

    .line 112
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
