.class public Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;
.super Ljava/lang/Object;
.source "ChangeUsernameDialogViewModel.java"

# interfaces
.implements Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;
.implements Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewModel"
.end annotation


# static fields
.field private static final DEBOUNCE_TIMEOUT:J = 0x1f4L


# instance fields
.field apiErrorParser:Lcom/intermedia/network/ApiErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field authedApi:Lcom/intermedia/network/AuthedApiService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final availableTextViewIsInvisible:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final changeUsernameApiSuccess:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final clearDrawables:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final dismissModal:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final doneButtonClicked:Lio/reactivex/processors/PublishProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final doneButtonEnabled:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final inputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;

.field loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final outputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;

.field private final prefillUsername:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sessionManager:Lcom/intermedia/user/session/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final showErrorSnackbar:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field userRepository:Lcom/intermedia/user/UserRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final usernameInput:Lio/reactivex/processors/PublishProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final usernameIsAvailable:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->doneButtonClicked:Lio/reactivex/processors/PublishProcessor;

    .line 139
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->usernameInput:Lio/reactivex/processors/PublishProcessor;

    .line 150
    iput-object p0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Inputs;

    .line 151
    iput-object p0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$Outputs;

    .line 68
    invoke-static {}, Lcom/intermedia/injection/UserObjectGraph;->get()Lcom/intermedia/injection/UserComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/intermedia/injection/UserComponent;->inject(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;)V

    .line 70
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v0}, Lcom/intermedia/user/UserRepository;->getUserFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$0;->$instance:Lio/reactivex/functions/Function;

    .line 71
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->usernameInput:Lio/reactivex/processors/PublishProcessor;

    sget-object v2, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$1;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/processors/PublishProcessor;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 75
    sget-object v2, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$2;->$instance:Lio/reactivex/functions/Function;

    .line 76
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 78
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1f4

    .line 79
    invoke-virtual {v1, v5, v6, v4}, Lio/reactivex/Flowable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v4

    sget-object v5, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$3;->$instance:Lio/reactivex/functions/Predicate;

    .line 80
    invoke-virtual {v4, v5}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v4

    sget-object v5, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$4;->$instance:Lio/reactivex/functions/Function;

    .line 81
    invoke-virtual {v4, v5}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v4

    iget-object v5, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$5;->get$Lambda(Lcom/intermedia/network/LoggedOutApiService;)Lio/reactivex/functions/Function;

    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Lio/reactivex/Flowable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v4

    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v4

    sget-object v5, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$6;->$instance:Lio/reactivex/functions/Function;

    .line 84
    invoke-virtual {v4, v5}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v4

    sget-object v5, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$7;->$instance:Lio/reactivex/functions/Function;

    .line 85
    invoke-virtual {v4, v5}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Lio/reactivex/Flowable;->share()Lio/reactivex/Flowable;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v3

    .line 88
    sget-object v4, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$8;->$instance:Lio/reactivex/functions/BiFunction;

    invoke-static {v3, v2, v4}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 91
    sget-object v3, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$9;->$instance:Lio/reactivex/functions/BiFunction;

    invoke-static {v0, v1, v3}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->doneButtonClicked:Lio/reactivex/processors/PublishProcessor;

    .line 95
    invoke-static {v4}, Lcom/intermedia/libs/rx/Transformers;->takeWhen(Lio/reactivex/Flowable;)Lcom/intermedia/libs/rx/TakeWhenTransformer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v4

    sget-object v5, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$10;->$instance:Lio/reactivex/functions/Function;

    .line 96
    invoke-virtual {v4, v5}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v4

    iget-object v5, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->authedApi:Lcom/intermedia/network/AuthedApiService;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$11;->get$Lambda(Lcom/intermedia/network/AuthedApiService;)Lio/reactivex/functions/Function;

    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Lio/reactivex/Flowable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v4

    invoke-virtual {v4}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v4

    invoke-virtual {v4}, Lio/reactivex/Flowable;->share()Lio/reactivex/Flowable;

    move-result-object v4

    .line 99
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v5

    sget-object v6, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$12;->$instance:Lio/reactivex/functions/Predicate;

    .line 100
    invoke-static {v6}, Lcom/intermedia/function/PredicateUtils;->not(Lio/reactivex/functions/Predicate;)Lio/reactivex/functions/Predicate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v5

    iget-object v6, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$13;->get$Lambda(Lcom/intermedia/network/ApiErrorParser;)Lio/reactivex/functions/Function;

    move-result-object v6

    .line 101
    invoke-virtual {v5, v6}, Lio/reactivex/Flowable;->flatMapMaybe(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v5

    .line 102
    sget-object v6, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$14;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {v5, v6}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v6

    new-instance v7, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$15;

    invoke-direct {v7, p0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$15;-><init>(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;)V

    sget-object v8, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$16;->$instance:Lio/reactivex/functions/Consumer;

    .line 103
    invoke-virtual {v6, v7, v8}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 105
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->errors()Lcom/intermedia/libs/rx/ErrorsTransformer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v6

    .line 106
    new-instance v7, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$17;

    invoke-direct {v7, p0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$17;-><init>(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;)V

    invoke-virtual {v6, v7}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 108
    sget-object v7, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$18;->$instance:Lio/reactivex/functions/Function;

    .line 109
    invoke-virtual {v3, v7}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v7

    sget-object v8, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$19;->$instance:Lio/reactivex/functions/Predicate;

    .line 110
    invoke-virtual {v1, v8}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v8, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$20;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v1, v8}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 108
    invoke-static {v7, v1}, Lio/reactivex/Flowable;->merge(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object v1

    iput-object v1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->availableTextViewIsInvisible:Lio/reactivex/Flowable;

    .line 111
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v4, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$21;->$instance:Lio/reactivex/functions/Predicate;

    .line 112
    invoke-virtual {v1, v4}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v1

    iput-object v1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->changeUsernameApiSuccess:Lio/reactivex/Flowable;

    .line 113
    iget-object v1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->changeUsernameApiSuccess:Lio/reactivex/Flowable;

    new-instance v4, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$22;

    invoke-direct {v4, p0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$22;-><init>(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;)V

    invoke-virtual {v1, v4}, Lio/reactivex/Flowable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v1

    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v1

    iget-object v4, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$23;->get$Lambda(Lcom/intermedia/user/UserRepository;)Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v7, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$24;->$instance:Lio/reactivex/functions/Consumer;

    .line 115
    invoke-virtual {v1, v4, v7}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 116
    iget-object v1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->usernameInput:Lio/reactivex/processors/PublishProcessor;

    sget-object v4, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$25;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v4}, Lio/reactivex/processors/PublishProcessor;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v4, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$26;->$instance:Lio/reactivex/functions/Predicate;

    .line 117
    invoke-virtual {v3, v4}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v4

    .line 116
    invoke-static {v1, v4}, Lio/reactivex/Flowable;->merge(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v4, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$27;->$instance:Lio/reactivex/functions/Function;

    .line 118
    invoke-virtual {v1, v4}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    iput-object v1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->clearDrawables:Lio/reactivex/Flowable;

    .line 119
    sget-object v1, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$28;->$instance:Lio/reactivex/functions/BiFunction;

    invoke-static {v2, v3, v1}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object v1

    iput-object v1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->doneButtonEnabled:Lio/reactivex/Flowable;

    .line 121
    iget-object v1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->changeUsernameApiSuccess:Lio/reactivex/Flowable;

    sget-object v4, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$29;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v1, v4}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    iput-object v1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->dismissModal:Lio/reactivex/Flowable;

    .line 122
    iput-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->prefillUsername:Lio/reactivex/Flowable;

    .line 123
    invoke-static {v5, v6}, Lio/reactivex/Flowable;->merge(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->showErrorSnackbar:Lio/reactivex/Flowable;

    .line 124
    sget-object v0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel$$Lambda$30;->$instance:Lio/reactivex/functions/Predicate;

    .line 125
    invoke-virtual {v3, v0}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/libs/rx/Transformers;->takeWhen(Lio/reactivex/Flowable;)Lcom/intermedia/libs/rx/TakeWhenTransformer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->usernameIsAvailable:Lio/reactivex/Flowable;

    return-void
.end method

.method private handleApiError(Lcom/intermedia/model/ApiError;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/ApiError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object p1, p1, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "profileMenu_referralFailed"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v2, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v2}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, p1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method static final synthetic lambda$new$0$ChangeUsernameDialogViewModel$ViewModel(Lcom/intermedia/model/ApiError;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    iget p0, p0, Lcom/intermedia/model/ApiError;->errorCode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$1$ChangeUsernameDialogViewModel$ViewModel(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$2$ChangeUsernameDialogViewModel$ViewModel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$3$ChangeUsernameDialogViewModel$ViewModel(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x1

    .line 110
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$5$ChangeUsernameDialogViewModel$ViewModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    sget-object p0, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    return-object p0
.end method

.method static final synthetic lambda$new$6$ChangeUsernameDialogViewModel$ViewModel(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$7$ChangeUsernameDialogViewModel$ViewModel(Lretrofit2/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    sget-object p0, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    return-object p0
.end method


# virtual methods
.method public availableTextViewIsInvisible()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->availableTextViewIsInvisible:Lio/reactivex/Flowable;

    return-object v0
.end method

.method final bridge synthetic bridge$lambda$0$ChangeUsernameDialogViewModel$ViewModel(Lcom/intermedia/model/ApiError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->handleApiError(Lcom/intermedia/model/ApiError;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$1$ChangeUsernameDialogViewModel$ViewModel(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public changeUsernameApiSuccess()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->changeUsernameApiSuccess:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public clearDrawables()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->clearDrawables:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public dismissDialog()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->dismissModal:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public doneButtonClicked()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->doneButtonClicked:Lio/reactivex/processors/PublishProcessor;

    sget-object v1, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public doneButtonEnabled()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->doneButtonEnabled:Lio/reactivex/Flowable;

    return-object v0
.end method

.method final synthetic lambda$new$4$ChangeUsernameDialogViewModel$ViewModel(Lretrofit2/Response;)Lorg/reactivestreams/Publisher;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    iget-object p1, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->authedApi:Lcom/intermedia/network/AuthedApiService;

    invoke-interface {p1}, Lcom/intermedia/network/AuthedApiService;->getUser()Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->toFlowable()Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public prefillUsername()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->prefillUsername:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public showErrorSnackbar()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->showErrorSnackbar:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public usernameInput(Ljava/lang/CharSequence;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->usernameInput:Lio/reactivex/processors/PublishProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public usernameIsAvailable()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;->usernameIsAvailable:Lio/reactivex/Flowable;

    return-object v0
.end method
