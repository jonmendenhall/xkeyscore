.class public final Lcom/intermedia/login/RegisterUserViewModel$ViewModel;
.super Ljava/lang/Object;
.source "RegisterUserViewModel.java"

# interfaces
.implements Lcom/intermedia/login/RegisterUserViewModel$Inputs;
.implements Lcom/intermedia/login/RegisterUserViewModel$Outputs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/login/RegisterUserViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewModel"
.end annotation


# static fields
.field private static final DEBOUNCE_TIMEOUT:J = 0xfaL


# instance fields
.field api:Lcom/intermedia/network/LoggedOutApiService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field final inputs:Lcom/intermedia/login/RegisterUserViewModel$Inputs;

.field private final nextButtonIsEnabled:Lio/reactivex/Flowable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final outputs:Lcom/intermedia/login/RegisterUserViewModel$Outputs;

.field private final referralAccepted:Lio/reactivex/Flowable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final referralChanged:Lio/reactivex/processors/PublishProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final referralInputIsValid:Lio/reactivex/Flowable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final referralIsAvailable:Lio/reactivex/Flowable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final usernameAccepted:Lio/reactivex/Flowable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final usernameChanged:Lio/reactivex/processors/PublishProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final usernameInputIsValid:Lio/reactivex/Flowable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final usernameIsAvailable:Lio/reactivex/Flowable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    .locals 12

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralChanged:Lio/reactivex/processors/PublishProcessor;

    .line 93
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameChanged:Lio/reactivex/processors/PublishProcessor;

    .line 103
    iput-object p0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->inputs:Lcom/intermedia/login/RegisterUserViewModel$Inputs;

    .line 104
    iput-object p0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->outputs:Lcom/intermedia/login/RegisterUserViewModel$Outputs;

    .line 44
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/intermedia/ApplicationComponent;->inject(Lcom/intermedia/login/RegisterUserViewModel$ViewModel;)V

    .line 46
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameChanged:Lio/reactivex/processors/PublishProcessor;

    sget-object v1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$0;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/PublishProcessor;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralChanged:Lio/reactivex/processors/PublishProcessor;

    sget-object v2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$1;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/processors/PublishProcessor;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 49
    sget-object v2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$2;->$instance:Lio/reactivex/functions/Function;

    .line 50
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v2

    iput-object v2, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameInputIsValid:Lio/reactivex/Flowable;

    .line 51
    sget-object v2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$3;->$instance:Lio/reactivex/functions/Function;

    .line 52
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    const/4 v4, 0x1

    .line 53
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v2

    iput-object v2, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralInputIsValid:Lio/reactivex/Flowable;

    .line 54
    sget-object v2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$4;->$instance:Lio/reactivex/functions/Function;

    .line 55
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v10

    .line 57
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6, v2}, Lio/reactivex/Flowable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$5;->$instance:Lio/reactivex/functions/Predicate;

    .line 58
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$6;->$instance:Lio/reactivex/functions/Function;

    .line 59
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v2, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->api:Lcom/intermedia/network/LoggedOutApiService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$7;->get$Lambda(Lcom/intermedia/network/LoggedOutApiService;)Lio/reactivex/functions/Function;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$8;->$instance:Lio/reactivex/functions/Function;

    .line 62
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$9;->$instance:Lio/reactivex/functions/Function;

    .line 63
    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lio/reactivex/Flowable;->share()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameIsAvailable:Lio/reactivex/Flowable;

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v0}, Lio/reactivex/Flowable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$10;->$instance:Lio/reactivex/functions/Predicate;

    .line 66
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$11;->$instance:Lio/reactivex/functions/Function;

    .line 67
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->api:Lcom/intermedia/network/LoggedOutApiService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$12;->get$Lambda(Lcom/intermedia/network/LoggedOutApiService;)Lio/reactivex/functions/Function;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$13;->$instance:Lio/reactivex/functions/Function;

    .line 70
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$14;->$instance:Lio/reactivex/functions/Function;

    .line 71
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lio/reactivex/Flowable;->share()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralIsAvailable:Lio/reactivex/Flowable;

    .line 74
    iget-object v6, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameIsAvailable:Lio/reactivex/Flowable;

    iget-object v7, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralIsAvailable:Lio/reactivex/Flowable;

    iget-object v8, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameInputIsValid:Lio/reactivex/Flowable;

    iget-object v9, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralInputIsValid:Lio/reactivex/Flowable;

    sget-object v11, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$15;->$instance:Lio/reactivex/functions/Function5;

    invoke-static/range {v6 .. v11}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function5;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 81
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->startWith(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->nextButtonIsEnabled:Lio/reactivex/Flowable;

    .line 83
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralIsAvailable:Lio/reactivex/Flowable;

    iget-object v1, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralInputIsValid:Lio/reactivex/Flowable;

    sget-object v2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$16;->$instance:Lio/reactivex/functions/BiFunction;

    invoke-static {v0, v1, v2}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralAccepted:Lio/reactivex/Flowable;

    .line 86
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameIsAvailable:Lio/reactivex/Flowable;

    iget-object v1, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameInputIsValid:Lio/reactivex/Flowable;

    sget-object v2, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$17;->$instance:Lio/reactivex/functions/BiFunction;

    invoke-static {v0, v1, v2}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameAccepted:Lio/reactivex/Flowable;

    return-void
.end method

.method static final synthetic lambda$new$0$RegisterUserViewModel$ViewModel(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/intermedia/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/intermedia/util/ValidationUtils;->isLongerThanMinimumUsernameLength(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$1$RegisterUserViewModel$ViewModel(Lcom/intermedia/model/ApiError;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
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

.method static final synthetic lambda$new$2$RegisterUserViewModel$ViewModel(Lcom/intermedia/model/ApiError;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
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

.method static final synthetic lambda$new$3$RegisterUserViewModel$ViewModel(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$4$RegisterUserViewModel$ViewModel(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
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

.method static final synthetic lambda$new$5$RegisterUserViewModel$ViewModel(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
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


# virtual methods
.method public nextButtonIsEnabled()Lio/reactivex/Flowable;
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

    .line 109
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->nextButtonIsEnabled:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public referralAccepted()Lio/reactivex/Flowable;
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

    .line 125
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralAccepted:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public referralCodeChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 114
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->referralChanged:Lio/reactivex/processors/PublishProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public usernameAccepted()Lio/reactivex/Flowable;
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

    .line 131
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameAccepted:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public usernameChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 119
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->usernameChanged:Lio/reactivex/processors/PublishProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method
