.class public final enum Lcom/google/android/gms/internal/zzeka;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzeka;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzncu:Lcom/google/android/gms/internal/zzeka;

.field public static final enum zzncv:Lcom/google/android/gms/internal/zzeka;

.field public static final enum zzncw:Lcom/google/android/gms/internal/zzeka;

.field public static final enum zzncx:Lcom/google/android/gms/internal/zzeka;

.field private static final synthetic zzncy:[Lcom/google/android/gms/internal/zzeka;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzeka;

    const-string v1, "DeferredValue"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzeka;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeka;->zzncu:Lcom/google/android/gms/internal/zzeka;

    new-instance v0, Lcom/google/android/gms/internal/zzeka;

    const-string v1, "Boolean"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzeka;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeka;->zzncv:Lcom/google/android/gms/internal/zzeka;

    new-instance v0, Lcom/google/android/gms/internal/zzeka;

    const-string v1, "Number"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzeka;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeka;->zzncw:Lcom/google/android/gms/internal/zzeka;

    new-instance v0, Lcom/google/android/gms/internal/zzeka;

    const-string v1, "String"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzeka;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeka;->zzncx:Lcom/google/android/gms/internal/zzeka;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/zzeka;

    sget-object v1, Lcom/google/android/gms/internal/zzeka;->zzncu:Lcom/google/android/gms/internal/zzeka;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzeka;->zzncv:Lcom/google/android/gms/internal/zzeka;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzeka;->zzncw:Lcom/google/android/gms/internal/zzeka;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzeka;->zzncx:Lcom/google/android/gms/internal/zzeka;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/zzeka;->zzncy:[Lcom/google/android/gms/internal/zzeka;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzeka;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzeka;->zzncy:[Lcom/google/android/gms/internal/zzeka;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzeka;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzeka;

    return-object v0
.end method
