.class final synthetic Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field static final $instance:Lio/reactivex/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$11;

    invoke-direct {v0}, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$11;-><init>()V

    sput-object v0, Lcom/intermedia/login/RegisterUserViewModel$ViewModel$$Lambda$11;->$instance:Lio/reactivex/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/intermedia/model/retrofit/ReferralCodeValidBody;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/intermedia/model/retrofit/ReferralCodeValidBody;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
