.class final synthetic Lcom/intermedia/login/RegisterUserActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/login/RegisterUserActivity;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/login/RegisterUserActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$6;->arg$1:Lcom/intermedia/login/RegisterUserActivity;

    iput-object p2, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$6;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$6;->arg$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$6;->arg$1:Lcom/intermedia/login/RegisterUserActivity;

    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$6;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$6;->arg$3:Ljava/lang/String;

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {v0, v1, v2, p1}, Lcom/intermedia/login/RegisterUserActivity;->lambda$registerInHouse$7$RegisterUserActivity(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;)V

    return-void
.end method
