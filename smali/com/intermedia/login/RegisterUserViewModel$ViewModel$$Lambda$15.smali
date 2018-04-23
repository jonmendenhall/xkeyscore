.class final synthetic Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function5;


# static fields
.field static final $instance:Lio/reactivex/functions/Function5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$15;

    invoke-direct {v0}, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$15;-><init>()V

    sput-object v0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$15;->$instance:Lio/reactivex/functions/Function5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    check-cast p3, Ljava/lang/Boolean;

    check-cast p4, Ljava/lang/Boolean;

    check-cast p5, Ljava/lang/Boolean;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->lambda$new$3$RegisterUserViewModel$ViewModel(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
