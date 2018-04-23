.class final synthetic Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final arg$1:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

.field private final arg$2:Lio/reactivex/processors/PublishProcessor;


# direct methods
.method constructor <init>(Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;Lio/reactivex/processors/PublishProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$2;->arg$1:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iput-object p2, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$2;->arg$2:Lio/reactivex/processors/PublishProcessor;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$2;->arg$1:Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;

    iget-object v1, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$2;->arg$2:Lio/reactivex/processors/PublishProcessor;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->lambda$new$2$LeaderboardViewModel$ViewModel(Lio/reactivex/processors/PublishProcessor;Ljava/lang/Integer;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
