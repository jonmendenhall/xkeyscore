.class final Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerApplicationComponent.java"

# interfaces
.implements Lcom/intermedia/injection/BaseActivityComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BaseActivityComponentBuilder"
.end annotation


# instance fields
.field private baseActivityModule:Lcom/intermedia/injection/BaseActivityModule;

.field final synthetic this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;


# direct methods
.method private constructor <init>(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;Lcom/intermedia/DaggerApplicationComponent$1;)V
    .locals 0

    .line 599
    invoke-direct {p0, p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;-><init>(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;)Lcom/intermedia/injection/BaseActivityModule;
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;->baseActivityModule:Lcom/intermedia/injection/BaseActivityModule;

    return-object p0
.end method


# virtual methods
.method public activityModule(Lcom/intermedia/injection/BaseActivityModule;)Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;
    .locals 0

    .line 613
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/injection/BaseActivityModule;

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;->baseActivityModule:Lcom/intermedia/injection/BaseActivityModule;

    return-object p0
.end method

.method public bridge synthetic activityModule(Lcom/intermedia/injection/BaseActivityModule;)Lcom/intermedia/injection/BaseActivityComponent$Builder;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;->activityModule(Lcom/intermedia/injection/BaseActivityModule;)Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/intermedia/injection/BaseActivityComponent;
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;->baseActivityModule:Lcom/intermedia/injection/BaseActivityModule;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/intermedia/injection/BaseActivityModule;

    .line 606
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_0
    new-instance v0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;->this$1:Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;-><init>(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;Lcom/intermedia/DaggerApplicationComponent$1;)V

    return-object v0
.end method
