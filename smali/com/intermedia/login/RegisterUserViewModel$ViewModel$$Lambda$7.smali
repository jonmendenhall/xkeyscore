.class final synthetic Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final arg$1:Lcom/intermedia/network/LoggedOutApiService;


# direct methods
.method private constructor <init>(Lcom/intermedia/network/LoggedOutApiService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$7;->arg$1:Lcom/intermedia/network/LoggedOutApiService;

    return-void
.end method

.method static get$Lambda(Lcom/intermedia/network/LoggedOutApiService;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$7;

    invoke-direct {v0, p0}, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$7;-><init>(Lcom/intermedia/network/LoggedOutApiService;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$7;->arg$1:Lcom/intermedia/network/LoggedOutApiService;

    check-cast p1, Lcom/intermedia/model/retrofit/UsernameAvailableBody;

    invoke-interface {v0, p1}, Lcom/intermedia/network/LoggedOutApiService;->usernameAvailable(Lcom/intermedia/model/retrofit/UsernameAvailableBody;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
