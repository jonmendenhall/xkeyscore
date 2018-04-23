.class public final Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;
.super Ljava/lang/Object;
.source "SettingsViewModel.java"

# interfaces
.implements Lcom/intermedia/viewmodels/SettingsViewModel$Inputs;
.implements Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/viewmodels/SettingsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewModel"
.end annotation


# instance fields
.field api:Lcom/intermedia/network/AuthedApiService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final avatarUrl:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final inputs:Lcom/intermedia/viewmodels/SettingsViewModel$Inputs;

.field public final outputs:Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;

.field private final referralButtonClicked:Lio/reactivex/processors/PublishProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final referralButtonIsEnabled:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final referralNameForButton:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final showAddReferralDialog:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final showAddedReferralDialog:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final tooltipButtonIsEnabled:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field userRepository:Lcom/intermedia/user/UserRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final username:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->referralButtonClicked:Lio/reactivex/processors/PublishProcessor;

    .line 72
    iput-object p0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/SettingsViewModel$Inputs;

    .line 73
    iput-object p0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;

    .line 40
    invoke-static {}, Lcom/intermedia/injection/UserObjectGraph;->get()Lcom/intermedia/injection/UserComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/intermedia/injection/UserComponent;->inject(Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;)V

    .line 42
    iget-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v0}, Lcom/intermedia/user/UserRepository;->getUserFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$0;->$instance:Lio/reactivex/functions/Function;

    .line 44
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 46
    sget-object v2, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$1;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    iput-object v2, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->avatarUrl:Lio/reactivex/Flowable;

    .line 47
    sget-object v2, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$2;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    iput-object v2, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->referralButtonIsEnabled:Lio/reactivex/Flowable;

    .line 48
    sget-object v2, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$3;->$instance:Lio/reactivex/functions/Predicate;

    .line 49
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-static {v2}, Lcom/intermedia/libs/rx/Transformers;->takeWhen(Lio/reactivex/Flowable;)Lcom/intermedia/libs/rx/TakeWhenTransformer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$4;->$instance:Lio/reactivex/functions/Function;

    .line 50
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    iget-object v3, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->api:Lcom/intermedia/network/AuthedApiService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$5;->get$Lambda(Lcom/intermedia/network/AuthedApiService;)Lio/reactivex/functions/Function;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lio/reactivex/Flowable;->materialize()Lio/reactivex/Flowable;

    move-result-object v2

    invoke-static {}, Lcom/intermedia/libs/rx/Transformers;->values()Lcom/intermedia/libs/rx/ValuesTransformer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$6;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    iput-object v2, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->referralNameForButton:Lio/reactivex/Flowable;

    .line 52
    iget-object v2, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->referralButtonClicked:Lio/reactivex/processors/PublishProcessor;

    .line 53
    invoke-static {v2}, Lcom/intermedia/libs/rx/Transformers;->takeWhen(Lio/reactivex/Flowable;)Lcom/intermedia/libs/rx/TakeWhenTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$7;->$instance:Lio/reactivex/functions/Predicate;

    .line 54
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$8;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    iput-object v2, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->showAddedReferralDialog:Lio/reactivex/Flowable;

    .line 55
    iget-object v2, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->referralButtonClicked:Lio/reactivex/processors/PublishProcessor;

    .line 56
    invoke-static {v2}, Lcom/intermedia/libs/rx/Transformers;->takeWhen(Lio/reactivex/Flowable;)Lcom/intermedia/libs/rx/TakeWhenTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v2, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$9;->$instance:Lio/reactivex/functions/Predicate;

    .line 57
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v1

    sget-object v2, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$10;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    iput-object v1, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->showAddReferralDialog:Lio/reactivex/Flowable;

    .line 58
    iget-object v1, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->referralButtonIsEnabled:Lio/reactivex/Flowable;

    iput-object v1, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->tooltipButtonIsEnabled:Lio/reactivex/Flowable;

    .line 59
    sget-object v1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$11;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->username:Lio/reactivex/Flowable;

    return-void
.end method

.method static final synthetic lambda$new$0$SettingsViewModel$ViewModel(Lcom/intermedia/model/HQUser;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/intermedia/util/NumberUtils;->INSTANCE:Lcom/intermedia/util/NumberUtils;

    invoke-virtual {p0}, Lcom/intermedia/model/HQUser;->referringUserId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/intermedia/util/NumberUtils;->isNonZero(Ljava/lang/Long;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$new$1$SettingsViewModel$ViewModel(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    sget-object p0, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    return-object p0
.end method

.method static final synthetic lambda$new$2$SettingsViewModel$ViewModel(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    sget-object p0, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    return-object p0
.end method


# virtual methods
.method public avatarUrl()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->avatarUrl:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public referralButtonClicked()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->referralButtonClicked:Lio/reactivex/processors/PublishProcessor;

    sget-object v1, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public referralButtonIsEnabled()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->referralButtonIsEnabled:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public referralNameForButton()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->referralNameForButton:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public showAddReferralDialog()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->showAddReferralDialog:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public showAddedReferralDialog()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->showAddedReferralDialog:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public tooltipButtonIsEnabled()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->tooltipButtonIsEnabled:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public username()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->username:Lio/reactivex/Flowable;

    return-object v0
.end method
