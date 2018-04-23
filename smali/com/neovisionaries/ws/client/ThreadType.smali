.class public final enum Lcom/neovisionaries/ws/client/ThreadType;
.super Ljava/lang/Enum;
.source "ThreadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neovisionaries/ws/client/ThreadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neovisionaries/ws/client/ThreadType;

.field public static final enum CONNECT_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

.field public static final enum FINISH_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

.field public static final enum READING_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

.field public static final enum WRITING_THREAD:Lcom/neovisionaries/ws/client/ThreadType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/neovisionaries/ws/client/ThreadType;

    const-string v1, "READING_THREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/ThreadType;->READING_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    .line 37
    new-instance v0, Lcom/neovisionaries/ws/client/ThreadType;

    const-string v1, "WRITING_THREAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/neovisionaries/ws/client/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/ThreadType;->WRITING_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    .line 44
    new-instance v0, Lcom/neovisionaries/ws/client/ThreadType;

    const-string v1, "CONNECT_THREAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/neovisionaries/ws/client/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/ThreadType;->CONNECT_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    .line 51
    new-instance v0, Lcom/neovisionaries/ws/client/ThreadType;

    const-string v1, "FINISH_THREAD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/neovisionaries/ws/client/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/ws/client/ThreadType;->FINISH_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [Lcom/neovisionaries/ws/client/ThreadType;

    sget-object v1, Lcom/neovisionaries/ws/client/ThreadType;->READING_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neovisionaries/ws/client/ThreadType;->WRITING_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neovisionaries/ws/client/ThreadType;->CONNECT_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/neovisionaries/ws/client/ThreadType;->FINISH_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/neovisionaries/ws/client/ThreadType;->$VALUES:[Lcom/neovisionaries/ws/client/ThreadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neovisionaries/ws/client/ThreadType;
    .locals 1

    .line 24
    const-class v0, Lcom/neovisionaries/ws/client/ThreadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neovisionaries/ws/client/ThreadType;

    return-object p0
.end method

.method public static values()[Lcom/neovisionaries/ws/client/ThreadType;
    .locals 1

    .line 24
    sget-object v0, Lcom/neovisionaries/ws/client/ThreadType;->$VALUES:[Lcom/neovisionaries/ws/client/ThreadType;

    invoke-virtual {v0}, [Lcom/neovisionaries/ws/client/ThreadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neovisionaries/ws/client/ThreadType;

    return-object v0
.end method
