.class final enum Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;
.super Ljava/lang/Enum;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/ws/client/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CloseInitiator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

.field public static final enum CLIENT:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

.field public static final enum NONE:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

.field public static final enum SERVER:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->NONE:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    .line 28
    new-instance v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    const-string v1, "SERVER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->SERVER:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    .line 29
    new-instance v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    const-string v1, "CLIENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->CLIENT:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    sget-object v1, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->NONE:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->SERVER:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->CLIENT:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    aput-object v1, v0, v4

    sput-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->$VALUES:[Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;
    .locals 1

    .line 25
    const-class v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    return-object p0
.end method

.method public static values()[Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;
    .locals 1

    .line 25
    sget-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->$VALUES:[Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    invoke-virtual {v0}, [Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    return-object v0
.end method
