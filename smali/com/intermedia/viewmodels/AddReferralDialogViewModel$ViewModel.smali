.class public final Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;
.super Ljava/lang/Object;
.source "AddReferralDialogViewModel.java"

# interfaces
.implements Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Inputs;
.implements Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/viewmodels/AddReferralDialogViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewModel"
.end annotation


# static fields
.field private static final DEBOUNCE_TIMEOUT:J = 0x1f4L


# instance fields
.field private final addReferralApiSuccess:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

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

.field public final inputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Inputs;

.field loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final outputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;

.field private final referralCodeIsValid:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final referralInput:Lio/reactivex/processors/PublishProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/CharSequence;",
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


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->doneButtonClicked:Lio/reactivex/processors/PublishProcessor;

    .line 128
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->referralInput:Lio/reactivex/processors/PublishProcessor;

    .line 138
    iput-object p0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Inputs;

    .line 139
    iput-object p0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/AddReferralDialogViewModel$Outputs;

    .line 65
    invoke-static {}, Lcom/intermedia/injection/UserObjectGraph;->get()Lcom/intermedia/injection/UserComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/intermedia/injection/UserComponent;->inject(Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;)V

    .line 67
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->referralInput:Lio/reactivex/processors/PublishProcessor;

    sget-object v1, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$0;->$instance:Lio/reactivex/functions/Function;

    .line 68
    invoke-virtual {v0, v1}, Lio/reactivex/processors/PublishProcessor;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$1;->$instance:Lio/reactivex/functions/Predicate;

    .line 71
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    .line 72
    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/Flowable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v2, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$2;->$instance:Lio/reactivex/functions/Function;

    .line 73
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    iget-object v2, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$3;->get$Lambda(Lcom/intermedia/network/LoggedOutApiService;)Lio/reactivex/functions/Function;

    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v1

    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v2, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$4;->$instance:Lio/reactivex/functions/Function;

    .line 76
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v2, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$5;->$instance:Lio/reactivex/functions/Function;

    .line 77
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lio/reactivex/Flowable;->share()Lio/reactivex/Flowable;

    move-result-object v1

    const/4 v2, 0x0

    .line 81
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v2, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$6;->$instance:Lio/reactivex/functions/Function;

    .line 82
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$7;->$instance:Lio/reactivex/functions/BiFunction;

    .line 80
    invoke-static {v1, v2, v3}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v1

    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->doneButtonClicked:Lio/reactivex/processors/PublishProcessor;

    .line 87
    invoke-static {v2}, Lcom/intermedia/libs/rx/Transformers;->takeWhen(Lio/reactivex/Flowable;)Lcom/intermedia/libs/rx/TakeWhenTransformer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$8;->$instance:Lio/reactivex/functions/Function;

    .line 88
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    iget-object v3, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->authedApi:Lcom/intermedia/network/AuthedApiService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$9;->get$Lambda(Lcom/intermedia/network/AuthedApiService;)Lio/reactivex/functions/Function;

    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Flowable;->share()Lio/reactivex/Flowable;

    move-result-object v2

    .line 92
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v3

    sget-object v4, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$10;->$instance:Lio/reactivex/functions/Predicate;

    .line 93
    invoke-static {v4}, Lcom/intermedia/function/PredicateUtils;->not(Lio/reactivex/functions/Predicate;)Lio/reactivex/functions/Predicate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v3

    iget-object v4, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$11;->get$Lambda(Lcom/intermedia/network/ApiErrorParser;)Lio/reactivex/functions/Function;

    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Lio/reactivex/Flowable;->flatMapMaybe(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v3

    .line 95
    sget-object v4, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$12;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {v3, v4}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v4

    new-instance v5, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$13;

    invoke-direct {v5, p0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$13;-><init>(Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;)V

    sget-object v6, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$14;->$instance:Lio/reactivex/functions/Consumer;

    .line 96
    invoke-virtual {v4, v5, v6}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 98
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->errors()Lcom/intermedia/libs/rx/ErrorsTransformer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v4

    .line 99
    new-instance v5, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$15;

    invoke-direct {v5, p0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$15;-><init>(Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;)V

    invoke-virtual {v4, v5}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 101
    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v5, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$16;->$instance:Lio/reactivex/functions/Predicate;

    .line 102
    invoke-virtual {v2, v5}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v2

    iput-object v2, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->addReferralApiSuccess:Lio/reactivex/Flowable;

    .line 103
    iget-object v2, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->addReferralApiSuccess:Lio/reactivex/Flowable;

    new-instance v5, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$17;

    invoke-direct {v5, p0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$17;-><init>(Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;)V

    invoke-virtual {v2, v5}, Lio/reactivex/Flowable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v2

    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v2

    iget-object v5, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$18;->get$Lambda(Lcom/intermedia/user/UserRepository;)Lio/reactivex/functions/Consumer;

    move-result-object v5

    sget-object v6, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$19;->$instance:Lio/reactivex/functions/Consumer;

    .line 105
    invoke-virtual {v2, v5, v6}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 106
    sget-object v2, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$20;->$instance:Lio/reactivex/functions/Function;

    .line 107
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v5, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$21;->$instance:Lio/reactivex/functions/Predicate;

    .line 108
    invoke-virtual {v0, v5}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v5, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$22;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v0, v5}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Lio/reactivex/Flowable;->merge(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->availableTextViewIsInvisible:Lio/reactivex/Flowable;

    .line 109
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->referralInput:Lio/reactivex/processors/PublishProcessor;

    sget-object v2, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$23;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v2}, Lio/reactivex/processors/PublishProcessor;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v2, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$24;->$instance:Lio/reactivex/functions/Function;

    .line 110
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->clearDrawables:Lio/reactivex/Flowable;

    .line 111
    iput-object v1, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->doneButtonEnabled:Lio/reactivex/Flowable;

    .line 112
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->addReferralApiSuccess:Lio/reactivex/Flowable;

    sget-object v2, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel$$Lambda$25;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->dismissModal:Lio/reactivex/Flowable;

    .line 113
    iput-object v1, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->referralCodeIsValid:Lio/reactivex/Flowable;

    .line 114
    invoke-static {v3, v4}, Lio/reactivex/Flowable;->merge(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->showErrorSnackbar:Lio/reactivex/Flowable;

    return-void
.end method

.method private handleApiError(Lcom/intermedia/model/ApiError;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/ApiError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object p1, p1, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "profileMenu_referralFailed"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v2, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v2}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, p1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method static final synthetic lambda$new$0$AddReferralDialogViewModel$ViewModel(Lcom/intermedia/model/ApiError;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
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

.method static final synthetic lambda$new$1$AddReferralDialogViewModel$ViewModel(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
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

.method static final synthetic lambda$new$3$AddReferralDialogViewModel$ViewModel(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 107
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$4$AddReferralDialogViewModel$ViewModel(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x1

    .line 108
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$5$AddReferralDialogViewModel$ViewModel(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    sget-object p0, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    return-object p0
.end method

.method static final synthetic lambda$new$6$AddReferralDialogViewModel$ViewModel(Lretrofit2/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    sget-object p0, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    return-object p0
.end method


# virtual methods
.method public addReferralApiSuccess()Lio/reactivex/Flowable;
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

    .line 153
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->addReferralApiSuccess:Lio/reactivex/Flowable;

    return-object v0
.end method

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

    .line 158
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->availableTextViewIsInvisible:Lio/reactivex/Flowable;

    return-object v0
.end method

.method final bridge synthetic bridge$lambda$0$AddReferralDialogViewModel$ViewModel(Lcom/intermedia/model/ApiError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->handleApiError(Lcom/intermedia/model/ApiError;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$1$AddReferralDialogViewModel$ViewModel(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->handleError(Ljava/lang/Throwable;)V

    return-void
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

    .line 163
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->clearDrawables:Lio/reactivex/Flowable;

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

    .line 168
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->dismissModal:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public doneButtonClicked()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->doneButtonClicked:Lio/reactivex/processors/PublishProcessor;

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

    .line 173
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->doneButtonEnabled:Lio/reactivex/Flowable;

    return-object v0
.end method

.method final synthetic lambda$new$2$AddReferralDialogViewModel$ViewModel(Lretrofit2/Response;)Lorg/reactivestreams/Publisher;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->authedApi:Lcom/intermedia/network/AuthedApiService;

    invoke-interface {p1}, Lcom/intermedia/network/AuthedApiService;->getUser()Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->toFlowable()Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public referralCodeIsValid()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->referralCodeIsValid:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public referralInput(Ljava/lang/CharSequence;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->referralInput:Lio/reactivex/processors/PublishProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
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

    .line 183
    iget-object v0, p0, Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;->showErrorSnackbar:Lio/reactivex/Flowable;

    return-object v0
.end method
