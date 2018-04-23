.class final synthetic Lcom/intermedia/login/RegisterUserActivity$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/login/RegisterUserActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/login/RegisterUserActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$7;->arg$1:Lcom/intermedia/login/RegisterUserActivity;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$7;->arg$1:Lcom/intermedia/login/RegisterUserActivity;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/intermedia/login/RegisterUserActivity;->lambda$registerInHouse$8$RegisterUserActivity(Ljava/lang/Throwable;)V

    return-void
.end method
