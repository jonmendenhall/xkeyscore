.class public final enum Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;
.super Ljava/lang/Enum;
.source "SoundEffectsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/util/SoundEffectsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum ELIMINATED:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum EXTRALIFE:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum GIFTDROP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum GIFTDROPCASH:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum GIFTDROPEMPTY:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum GIFTDROPEXTRALIFE:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum LOWTAP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum QUESTION:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum RESULTS:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum RIGHT:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum TAP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum TAPELIMINATED:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

.field public static final enum WRONG:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 107
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "QUESTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->QUESTION:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 108
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "TAP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->TAP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 109
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "TAPELIMINATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->TAPELIMINATED:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 110
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "LOWTAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->LOWTAP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 111
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "ELIMINATED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->ELIMINATED:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 112
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "RESULTS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->RESULTS:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 113
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "RIGHT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->RIGHT:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 114
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "WRONG"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->WRONG:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 115
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "EXTRALIFE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->EXTRALIFE:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 116
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "GIFTDROP"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 117
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "GIFTDROPEXTRALIFE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROPEXTRALIFE:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 118
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "GIFTDROPCASH"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROPCASH:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    .line 119
    new-instance v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const-string v1, "GIFTDROPEMPTY"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROPEMPTY:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    const/16 v0, 0xd

    .line 106
    new-array v0, v0, [Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->QUESTION:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->TAP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->TAPELIMINATED:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->LOWTAP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->ELIMINATED:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v6

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->RESULTS:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v7

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->RIGHT:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v8

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->WRONG:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v9

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->EXTRALIFE:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v10

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v11

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROPEXTRALIFE:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v12

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROPCASH:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v13

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROPEMPTY:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    aput-object v1, v0, v14

    sput-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->$VALUES:[Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;
    .locals 1

    .line 106
    const-class v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    return-object p0
.end method

.method public static values()[Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;
    .locals 1

    .line 106
    sget-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->$VALUES:[Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    invoke-virtual {v0}, [Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    return-object v0
.end method
