.class final synthetic Lcom/intermedia/login/LoginActivity$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field static final $instance:Lio/reactivex/functions/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/login/LoginActivity$$Lambda$2;

    invoke-direct {v0}, Lcom/intermedia/login/LoginActivity$$Lambda$2;-><init>()V

    sput-object v0, Lcom/intermedia/login/LoginActivity$$Lambda$2;->$instance:Lio/reactivex/functions/Consumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/intermedia/login/LoginActivity;->lambda$onCreate$1$LoginActivity(Ljava/lang/Throwable;)V

    return-void
.end method
