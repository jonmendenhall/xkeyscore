.class final synthetic Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lio/reactivex/processors/PublishProcessor;


# direct methods
.method constructor <init>(Lio/reactivex/processors/PublishProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$11;->arg$1:Lio/reactivex/processors/PublishProcessor;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$11;->arg$1:Lio/reactivex/processors/PublishProcessor;

    check-cast p1, Lcom/intermedia/model/retrofit/envelope/LeaderEnvelope;

    invoke-static {v0, p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->lambda$null$1$LeaderboardViewModel$ViewModel(Lio/reactivex/processors/PublishProcessor;Lcom/intermedia/model/retrofit/envelope/LeaderEnvelope;)V

    return-void
.end method
