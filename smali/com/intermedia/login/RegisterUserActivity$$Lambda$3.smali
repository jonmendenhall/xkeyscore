.class final synthetic Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final arg$1:Lcom/intermedia/login/RegisterUserActivity;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/login/RegisterUserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;->arg$1:Lcom/intermedia/login/RegisterUserActivity;

    iput-object p2, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;->arg$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;->arg$1:Lcom/intermedia/login/RegisterUserActivity;

    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;->arg$4:Ljava/lang/String;

    check-cast p1, Lcom/intermedia/model/ApiError;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/intermedia/login/RegisterUserActivity;->lambda$registerFirebase$2$RegisterUserActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/ApiError;)Lio/reactivex/MaybeSource;

    move-result-object p1

    return-object p1
.end method
