.class final enum Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;
.super Ljava/lang/Enum;
.source "PhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/ui/phone/PhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VerificationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

.field public static final enum VERIFICATION_NOT_STARTED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

.field public static final enum VERIFICATION_STARTED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

.field public static final enum VERIFIED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    const-string v1, "VERIFICATION_NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFICATION_NOT_STARTED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    new-instance v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    const-string v1, "VERIFICATION_STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFICATION_STARTED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    new-instance v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    const-string v1, "VERIFIED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFIED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    const/4 v0, 0x3

    .line 56
    new-array v0, v0, [Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    sget-object v1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFICATION_NOT_STARTED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFICATION_STARTED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->VERIFIED:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->$VALUES:[Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;
    .locals 1

    .line 56
    const-class v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    return-object p0
.end method

.method public static values()[Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;
    .locals 1

    .line 56
    sget-object v0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->$VALUES:[Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    invoke-virtual {v0}, [Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/ui/auth/ui/phone/PhoneActivity$VerificationState;

    return-object v0
.end method
