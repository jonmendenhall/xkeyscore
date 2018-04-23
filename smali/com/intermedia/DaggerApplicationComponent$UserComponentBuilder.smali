.class final Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerApplicationComponent.java"

# interfaces
.implements Lcom/intermedia/injection/UserComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/DaggerApplicationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserComponentBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/DaggerApplicationComponent;

.field private userModule:Lcom/intermedia/injection/UserModule;


# direct methods
.method private constructor <init>(Lcom/intermedia/DaggerApplicationComponent;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/DaggerApplicationComponent;Lcom/intermedia/DaggerApplicationComponent$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;-><init>(Lcom/intermedia/DaggerApplicationComponent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;)Lcom/intermedia/injection/UserModule;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;->userModule:Lcom/intermedia/injection/UserModule;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/intermedia/injection/UserComponent;
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;->userModule:Lcom/intermedia/injection/UserModule;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/intermedia/injection/UserModule;

    invoke-direct {v0}, Lcom/intermedia/injection/UserModule;-><init>()V

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;->userModule:Lcom/intermedia/injection/UserModule;

    .line 404
    :cond_0
    new-instance v0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;-><init>(Lcom/intermedia/DaggerApplicationComponent;Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;Lcom/intermedia/DaggerApplicationComponent$1;)V

    return-object v0
.end method

.method public userModule(Lcom/intermedia/injection/UserModule;)Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;
    .locals 0

    .line 409
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/injection/UserModule;

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;->userModule:Lcom/intermedia/injection/UserModule;

    return-object p0
.end method

.method public bridge synthetic userModule(Lcom/intermedia/injection/UserModule;)Lcom/intermedia/injection/UserComponent$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;->userModule(Lcom/intermedia/injection/UserModule;)Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;

    move-result-object p1

    return-object p1
.end method
