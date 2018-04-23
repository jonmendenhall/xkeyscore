.class public final Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;
.super Ljava/lang/Object;
.source "LeaderboardViewModel.java"

# interfaces
.implements Lcom/intermedia/viewmodels/LeaderboardViewModel$Inputs;
.implements Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/viewmodels/LeaderboardViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewModel"
.end annotation


# instance fields
.field private final allTimeButtonClicked:Lio/reactivex/processors/PublishProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hqApi:Lcom/intermedia/network/AuthedApiService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final inputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Inputs;

.field private final leaders:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/intermedia/model/Leader;",
            ">;>;"
        }
    .end annotation
.end field

.field public final outputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;

.field private final progressBarIsGone:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final reportLeaderboardError:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final selfAvatarUrl:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selfBalanceTextViewText:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selfRankTextViewText:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selfUsernameTextViewText:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final thisWeekButtonClicked:Lio/reactivex/processors/PublishProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/intermedia/user/UserRepository;)V
    .locals 5
    .param p1    # Lcom/intermedia/user/UserRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->allTimeButtonClicked:Lio/reactivex/processors/PublishProcessor;

    .line 79
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->thisWeekButtonClicked:Lio/reactivex/processors/PublishProcessor;

    .line 89
    iput-object p0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Inputs;

    .line 90
    iput-object p0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/LeaderboardViewModel$Outputs;

    .line 48
    invoke-static {}, Lcom/intermedia/injection/UserObjectGraph;->get()Lcom/intermedia/injection/UserComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/intermedia/injection/UserComponent;->inject(Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;)V

    .line 49
    invoke-virtual {p1}, Lcom/intermedia/user/UserRepository;->getUserFlowable()Lio/reactivex/Flowable;

    move-result-object p1

    .line 51
    sget-object v0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$0;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$1;->$instance:Lio/reactivex/functions/Predicate;

    .line 52
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->allTimeButtonClicked:Lio/reactivex/processors/PublishProcessor;

    iget-object v2, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->thisWeekButtonClicked:Lio/reactivex/processors/PublishProcessor;

    invoke-static {v1, v2}, Lio/reactivex/Flowable;->merge(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object v1

    const/4 v2, 0x1

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 58
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v2

    .line 60
    new-instance v3, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$2;

    invoke-direct {v3, p0, v2}, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$2;-><init>(Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;Lio/reactivex/processors/PublishProcessor;)V

    .line 61
    invoke-virtual {v1, v3}, Lio/reactivex/Flowable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lio/reactivex/Flowable;->share()Lio/reactivex/Flowable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v1

    .line 66
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v3

    const-class v4, Lcom/intermedia/model/retrofit/envelope/LeaderEnvelope;

    .line 67
    invoke-virtual {v3, v4}, Lio/reactivex/Flowable;->ofType(Ljava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object v3

    sget-object v4, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$3;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v3, v4}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v3

    sget-object v4, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$4;->$instance:Lio/reactivex/functions/Predicate;

    .line 68
    invoke-virtual {v3, v4}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v3

    iput-object v3, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->leaders:Lio/reactivex/Flowable;

    .line 69
    sget-object v3, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$5;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v2, v3}, Lio/reactivex/processors/PublishProcessor;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lio/reactivex/Flowable;->onBackpressureLatest()Lio/reactivex/Flowable;

    move-result-object v2

    iput-object v2, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->progressBarIsGone:Lio/reactivex/Flowable;

    .line 71
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->errors()Lcom/intermedia/libs/rx/ErrorsTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v1

    iput-object v1, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->reportLeaderboardError:Lio/reactivex/Flowable;

    .line 72
    sget-object v1, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$6;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    iput-object v1, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->selfAvatarUrl:Lio/reactivex/Flowable;

    .line 73
    sget-object v1, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$7;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    iput-object v1, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->selfBalanceTextViewText:Lio/reactivex/Flowable;

    .line 74
    sget-object v1, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$8;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->selfRankTextViewText:Lio/reactivex/Flowable;

    .line 75
    sget-object v0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$9;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->selfUsernameTextViewText:Lio/reactivex/Flowable;

    return-void
.end method

.method static final synthetic lambda$null$0$LeaderboardViewModel$ViewModel(Lio/reactivex/processors/PublishProcessor;Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic lambda$null$1$LeaderboardViewModel$ViewModel(Lio/reactivex/processors/PublishProcessor;Lcom/intermedia/model/retrofit/envelope/LeaderEnvelope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public allTimeButtonClicked(I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->allTimeButtonClicked:Lio/reactivex/processors/PublishProcessor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$new$2$LeaderboardViewModel$ViewModel(Lio/reactivex/processors/PublishProcessor;Ljava/lang/Integer;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->hqApi:Lcom/intermedia/network/AuthedApiService;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p2}, Lcom/intermedia/network/AuthedApiService;->getLeaderboard(I)Lio/reactivex/Single;

    move-result-object p2

    new-instance v0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$10;

    invoke-direct {v0, p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$10;-><init>(Lio/reactivex/processors/PublishProcessor;)V

    .line 62
    invoke-virtual {p2, v0}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p2

    new-instance v0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$11;

    invoke-direct {v0, p1}, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel$$Lambda$11;-><init>(Lio/reactivex/processors/PublishProcessor;)V

    .line 63
    invoke-virtual {p2, v0}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public leaders()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/intermedia/model/Leader;",
            ">;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->leaders:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public progressBarIsGone()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->progressBarIsGone:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public reportLeaderboardError()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->reportLeaderboardError:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public selfAvatarUrl()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->selfAvatarUrl:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public selfBalanceTextViewText()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->selfBalanceTextViewText:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public selfRankTextViewText()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->selfRankTextViewText:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public selfUsernameTextViewText()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->selfUsernameTextViewText:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public thisWeekButtonClicked(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;->thisWeekButtonClicked:Lio/reactivex/processors/PublishProcessor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method
