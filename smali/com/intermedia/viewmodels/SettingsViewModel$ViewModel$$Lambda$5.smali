.class final synthetic Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final arg$1:Lcom/intermedia/network/AuthedApiService;


# direct methods
.method private constructor <init>(Lcom/intermedia/network/AuthedApiService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$5;->arg$1:Lcom/intermedia/network/AuthedApiService;

    return-void
.end method

.method static get$Lambda(Lcom/intermedia/network/AuthedApiService;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$5;-><init>(Lcom/intermedia/network/AuthedApiService;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel$$Lambda$5;->arg$1:Lcom/intermedia/network/AuthedApiService;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/intermedia/network/AuthedApiService;->getUser(J)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
