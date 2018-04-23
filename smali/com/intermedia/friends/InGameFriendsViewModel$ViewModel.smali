.class public final Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;
.super Ljava/lang/Object;
.source "InGameFriendsViewModel.java"

# interfaces
.implements Lcom/intermedia/friends/InGameFriendsViewModel$Inputs;
.implements Lcom/intermedia/friends/InGameFriendsViewModel$Outputs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/friends/InGameFriendsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewModel"
.end annotation


# instance fields
.field private final activeFriends:Lio/reactivex/processors/PublishProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/util/List<",
            "Lcom/intermedia/model/ViewerUpdateUser;",
            ">;>;"
        }
    .end annotation
.end field

.field private activeFriendsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/intermedia/model/ViewerUpdateUser;",
            ">;"
        }
    .end annotation
.end field

.field authedApiService:Lcom/intermedia/network/AuthedApiService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final drawerOpened:Lio/reactivex/processors/PublishProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final otherViewers:Lio/reactivex/Flowable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/intermedia/model/PartialUser;",
            ">;>;"
        }
    .end annotation
.end field

.field private final questionChanged:Lio/reactivex/processors/PublishProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final viewerUpdates:Lio/reactivex/processors/PublishProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Lcom/intermedia/model/message/ViewerUpdateMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->activeFriendsSet:Ljava/util/HashSet;

    .line 91
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->activeFriends:Lio/reactivex/processors/PublishProcessor;

    .line 92
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->drawerOpened:Lio/reactivex/processors/PublishProcessor;

    .line 93
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->questionChanged:Lio/reactivex/processors/PublishProcessor;

    .line 95
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->viewerUpdates:Lio/reactivex/processors/PublishProcessor;

    .line 53
    invoke-static {}, Lcom/intermedia/injection/UserObjectGraph;->get()Lcom/intermedia/injection/UserComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/intermedia/injection/UserComponent;->inject(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V

    .line 55
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->authedApiService:Lcom/intermedia/network/AuthedApiService;

    .line 56
    invoke-interface {v0, p1, p2}, Lcom/intermedia/network/AuthedApiService;->getActiveFriends(J)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$0;->$instance:Lio/reactivex/functions/Function;

    .line 57
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$1;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Flowable;->share()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$2;-><init>(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V

    .line 59
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->viewerUpdates:Lio/reactivex/processors/PublishProcessor;

    sget-object v2, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$3;->$instance:Lio/reactivex/functions/Predicate;

    .line 62
    invoke-virtual {v1, v2}, Lio/reactivex/processors/PublishProcessor;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$4;

    invoke-direct {v2, p0}, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$4;-><init>(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V

    .line 63
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->viewerUpdates:Lio/reactivex/processors/PublishProcessor;

    sget-object v3, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$5;->$instance:Lio/reactivex/functions/Predicate;

    .line 65
    invoke-virtual {v2, v3}, Lio/reactivex/processors/PublishProcessor;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v2

    new-instance v3, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$6;

    invoke-direct {v3, p0}, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$6;-><init>(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V

    .line 66
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->viewerUpdates:Lio/reactivex/processors/PublishProcessor;

    sget-object v4, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$7;->$instance:Lio/reactivex/functions/Predicate;

    .line 68
    invoke-virtual {v3, v4}, Lio/reactivex/processors/PublishProcessor;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v3

    new-instance v4, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$8;

    invoke-direct {v4, p0}, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$8;-><init>(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V

    .line 69
    invoke-virtual {v3, v4}, Lio/reactivex/Flowable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v3

    .line 71
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->ignoreValueType()Lcom/intermedia/libs/rx/IgnoreValueTypeTransformer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->ignoreValueType()Lcom/intermedia/libs/rx/IgnoreValueTypeTransformer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->ignoreValueType()Lcom/intermedia/libs/rx/IgnoreValueTypeTransformer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 74
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->ignoreValueType()Lcom/intermedia/libs/rx/IgnoreValueTypeTransformer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v3

    .line 71
    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Flowable;->merge(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 75
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    .line 76
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Flowable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 77
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->drawerOpened:Lio/reactivex/processors/PublishProcessor;

    .line 78
    invoke-static {v1}, Lcom/intermedia/libs/rx/Transformers;->takeWhen(Lio/reactivex/Flowable;)Lcom/intermedia/libs/rx/TakeWhenTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$9;

    invoke-direct {v1, p0}, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$9;-><init>(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V

    .line 79
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 82
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->authedApiService:Lcom/intermedia/network/AuthedApiService;

    const-string v1, "playing"

    .line 83
    invoke-interface {v0, p1, p2, v1}, Lcom/intermedia/network/AuthedApiService;->usersPlaying(JLjava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$10;->$instance:Lio/reactivex/functions/Function;

    .line 84
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel$$Lambda$11;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Flowable;->share()Lio/reactivex/Flowable;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->drawerOpened:Lio/reactivex/processors/PublishProcessor;

    invoke-static {p2}, Lcom/intermedia/libs/rx/Transformers;->takeWhen(Lio/reactivex/Flowable;)Lcom/intermedia/libs/rx/TakeWhenTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->otherViewers:Lio/reactivex/Flowable;

    return-void
.end method

.method static final synthetic lambda$new$1$InGameFriendsViewModel$ViewModel(Lcom/intermedia/model/message/ViewerUpdateMessage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/intermedia/model/message/ViewerUpdateMessage;->viewerState:Ljava/lang/String;

    const-string v0, "disconnected"

    invoke-static {p0, v0}, Lcom/intermedia/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static final synthetic lambda$new$3$InGameFriendsViewModel$ViewModel(Lcom/intermedia/model/message/ViewerUpdateMessage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/intermedia/model/message/ViewerUpdateMessage;->viewerState:Ljava/lang/String;

    const-string v0, "playing"

    invoke-static {p0, v0}, Lcom/intermedia/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static final synthetic lambda$new$5$InGameFriendsViewModel$ViewModel(Lcom/intermedia/model/message/ViewerUpdateMessage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lcom/intermedia/model/message/ViewerUpdateMessage;->viewerState:Ljava/lang/String;

    const-string v0, "watching"

    invoke-static {p0, v0}, Lcom/intermedia/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public activeFriends()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/intermedia/model/ViewerUpdateUser;",
            ">;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->activeFriends:Lio/reactivex/processors/PublishProcessor;

    return-object v0
.end method

.method public drawerOpened()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->drawerOpened:Lio/reactivex/processors/PublishProcessor;

    sget-object v1, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$new$0$InGameFriendsViewModel$ViewModel(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->activeFriendsSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method final synthetic lambda$new$2$InGameFriendsViewModel$ViewModel(Lcom/intermedia/model/message/ViewerUpdateMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->activeFriendsSet:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/intermedia/model/message/ViewerUpdateMessage;->user:Lcom/intermedia/model/ViewerUpdateUser;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic lambda$new$4$InGameFriendsViewModel$ViewModel(Lcom/intermedia/model/message/ViewerUpdateMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->activeFriendsSet:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/intermedia/model/message/ViewerUpdateMessage;->user:Lcom/intermedia/model/ViewerUpdateUser;

    invoke-static {v0, p1}, Lcom/intermedia/util/CollectionUtils;->replace(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$new$6$InGameFriendsViewModel$ViewModel(Lcom/intermedia/model/message/ViewerUpdateMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->activeFriendsSet:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/intermedia/model/message/ViewerUpdateMessage;->user:Lcom/intermedia/model/ViewerUpdateUser;

    invoke-static {v0, p1}, Lcom/intermedia/util/CollectionUtils;->replace(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$new$7$InGameFriendsViewModel$ViewModel(Lcom/intermedia/libs/rx/RxNotification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    iget-object p1, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->activeFriends:Lio/reactivex/processors/PublishProcessor;

    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->activeFriendsSet:Ljava/util/HashSet;

    .line 80
    invoke-static {v0}, Lcom/intermedia/util/CollectionUtils;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public otherViewers()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/intermedia/model/PartialUser;",
            ">;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->otherViewers:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public questionHasChanged()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->questionChanged:Lio/reactivex/processors/PublishProcessor;

    sget-object v1, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public viewerUpdateReceived(Lcom/intermedia/model/message/ViewerUpdateMessage;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/message/ViewerUpdateMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 123
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->viewerUpdates:Lio/reactivex/processors/PublishProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method
