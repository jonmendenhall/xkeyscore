.class final synthetic Lcom/intermedia/LeaderboardActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/LeaderboardActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/LeaderboardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/LeaderboardActivity$$Lambda$1;->arg$1:Lcom/intermedia/LeaderboardActivity;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity$$Lambda$1;->arg$1:Lcom/intermedia/LeaderboardActivity;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/intermedia/LeaderboardActivity;->lambda$onCreate$0$LeaderboardActivity(Ljava/lang/Throwable;)V

    return-void
.end method
